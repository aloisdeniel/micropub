import 'dart:convert';
import 'dart:io';
import 'package:logging/logging.dart';
import 'package:micropub/src/server/auth/auth.dart';
import 'package:micropub/src/server/controllers/api/api.dart';
import 'package:micropub/src/server/storage/storage.dart';
import 'package:micropub/src/server/utils/yaml.dart';
import 'package:micropub/src/shared/model.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:mime/mime.dart';
import 'package:collection/collection.dart';
import 'package:http_parser/http_parser.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:archive/archive.dart';

part 'packages.g.dart';

class PackagesApiController {
  const PackagesApiController({
    required this.auth,
    required this.storage,
    Logger? logger,
  }) : _logger = logger;

  final Logger? _logger;
  Logger get logger => _logger ?? Logger.root;
  final MicropubAuth auth;
  final MicropubStorage storage;

  Router get router => _$PackagesApiControllerRouter(this);

  @Route.get('/<name>')
  Future<shelf.Response> getVersions(shelf.Request req, String name) async {
    return req.withAuthorizations(MicropubAuthorization.read, () async {
      var package = await storage.queryPackage(name);

      if (package == null) {
        return shelf.Response.notFound('not found');
      }

      var versionMaps = package.versions
          .map((item) => _versionToJson(item, req.requestedUri))
          .toList();

      return {
        'name': name,
        'latest': versionMaps.last,
        'versions': versionMaps,
      }.asJsonResponse();
    });
  }

  @Route.get('/<name>/details')
  Future<shelf.Response> getPackageDetails(
      shelf.Request req, String name) async {
    return req.withAuthorizations(MicropubAuthorization.read, () async {
      var package = await storage.queryPackage(name);

      if (package == null) {
        return shelf.Response.notFound('not found');
      }

      var readme = await storage.loadReadme(name);

      final details = MicropubPackageDetails(
        package: package,
        readme: readme,
      );

      return details.toJson().asJsonResponse();
    });
  }

  @Route.get('/<name>/versions/<version>')
  Future<shelf.Response> getVersion(
      shelf.Request req, String name, String version) async {
    return req.withAuthorizations(MicropubAuthorization.read, () async {
      try {
        version = Uri.decodeComponent(version);
      } catch (err) {
        print(err);
      }

      var package = await storage.queryPackage(name);

      if (package == null) {
        return shelf.Response.notFound('Not Found');
      }

      var packageVersion =
          package.versions.firstWhereOrNull((item) => item.version == version);
      if (packageVersion == null) {
        return shelf.Response.notFound('Not Found');
      }

      return _versionToJson(packageVersion, req.requestedUri).asJsonResponse();
    });
  }

  @Route.get('/')
  Future<shelf.Response> getPackages(shelf.Request req) async {
    var params = req.requestedUri.queryParameters;
    var size = int.tryParse(params['size'] ?? '') ?? 100;
    var page = int.tryParse(params['page'] ?? '') ?? 0;
    var sort = params['sort'] ?? 'download';
    var q = params['q'];

    String? keyword;
    String? uploader;
    String? dependency;

    if (q == null) {
    } else if (q.startsWith('email:')) {
      uploader = q.substring(6).trim();
    } else if (q.startsWith('dependency:')) {
      dependency = q.substring(11).trim();
    } else {
      keyword = q;
    }

    final result = await storage.queryPackages(
      size: size,
      page: page,
      sort: sort,
      keyword: keyword,
      uploader: uploader,
      dependency: dependency,
    );

    return result.toJson().asJsonResponse();
  }

  @Route.get('/versions/new')
  Future<shelf.Response> getUploadUrl(shelf.Request req) async {
    return req.withAuthorizations(MicropubAuthorization.read, () async {
      return {
        'url': req.requestedUri
            .resolve('/api/packages/versions/newUpload')
            .toString(),
        'fields': {},
      }.asJsonResponse();
    });
  }

  @Route.post('/versions/newUpload')
  Future<shelf.Response> upload(shelf.Request req) async {
    return req.withAuthorizations(MicropubAuthorization.write, () async {
      try {
        final uploader = req.context['email'] as String;

        var contentType = req.headers['content-type'];
        if (contentType == null) throw 'invalid content type';

        var mediaType = MediaType.parse(contentType);
        var boundary = mediaType.parameters['boundary'];
        if (boundary == null) throw 'invalid boundary';

        logger.info('New package upload...');
        var transformer = MimeMultipartTransformer(boundary);
        MimeMultipart? fileData;

        // The map below makes the runtime type checker happy.
        // https://github.com/dart-lang/pub-dev/blob/19033f8154ca1f597ef5495acbc84a2bb368f16d/app/lib/fake/server/fake_storage_server.dart#L74
        final stream = req.read().map((a) => a).transform(transformer);
        await for (var part in stream) {
          if (fileData != null) continue;
          fileData = part;
        }

        logger.info('Reading multipart data...');
        var bb = await fileData!.fold(BytesBuilder(),
            (BytesBuilder byteBuilder, d) => byteBuilder..add(d));
        var tarballBytes = bb.takeBytes();
        var tarBytes = GZipDecoder().decodeBytes(tarballBytes);
        var archive = TarDecoder().decodeBytes(tarBytes);
        ArchiveFile? pubspecArchiveFile;
        ArchiveFile? readmeFile;
        ArchiveFile? changelogFile;

        for (var file in archive.files) {
          if (file.name == 'pubspec.yaml') {
            pubspecArchiveFile = file;
            continue;
          }
          if (file.name.toLowerCase() == 'readme.md') {
            readmeFile = file;
            continue;
          }
          if (file.name.toLowerCase() == 'changelog.md') {
            changelogFile = file;
            continue;
          }
        }

        if (pubspecArchiveFile == null) {
          throw 'Did not find any pubspec.yaml file in upload. Aborting.';
        }

        var pubspecYaml = utf8.decode(pubspecArchiveFile.content);
        var pubspec = loadYamlAsMap(pubspecYaml)!;

        var name = pubspec['name'] as String;
        var version = pubspec['version'] as String;

        logger.info('New version $version for package $name');
        var package = await storage.queryPackage(name);

        // Package already exists
        if (package != null) {
          // Check uploaders
          if (package.uploaders?.contains(uploader) == false) {
            throw '$uploader is not an uploader of $name';
          }

          // Check duplicated version
          var duplicated = package.versions
              .firstWhereOrNull((item) => version == item.version);
          if (duplicated != null) {
            throw 'version invalid: $name@$version already exists.';
          }
        }

        // Upload package tarball to storage
        logger.info('Saving $name:$version package binary...');
        await storage.upload(name, version, tarballBytes);

        String? readme;
        String? changelog;
        if (readmeFile != null) {
          readme = utf8.decode(readmeFile.content);
        }
        if (changelogFile != null) {
          changelog = utf8.decode(changelogFile.content);
        }

        // Write package meta to database
        var unpubVersion = MicropubVersion(
          version: version,
          pubspec: pubspec,
          pubspecYaml: pubspecYaml,
          uploader: uploader,
          readme: readme,
          changelog: changelog,
          createdAt: DateTime.now(),
        );
        logger.info('Saving $name:$version metadata...');
        await storage.addVersion(name, unpubVersion);

        return shelf.Response.found(req.requestedUri
            .resolve('/api/packages/versions/newUploadFinish')
            .toString());
      } catch (err) {
        logger.warning('Package upload failed : $err');
        return shelf.Response.found(req.requestedUri
            .resolve('/api/packages/versions/newUploadFinish?error=$err'));
      }
    });
  }

  @Route.get('/versions/newUploadFinish')
  Future<shelf.Response> uploadFinish(shelf.Request req) async {
    return req.withAuthorizations(MicropubAuthorization.write, () async {
      var error = req.requestedUri.queryParameters['error'];
      if (error != null) {
        return _badRequest(error);
      }
      return _successMessage('Successfully uploaded package.');
    });
  }

  @Route.post('/<name>/uploaders')
  Future<shelf.Response> addUploader(shelf.Request req, String name) async {
    return req.withAuthorizations(MicropubAuthorization.write, () async {
      var body = await req.readAsString();
      var email = Uri.splitQueryString(body)['email']!;
      var package = await storage.queryPackage(name);

      if (package?.uploaders?.contains(email) == false) {
        return _badRequest('no permission', status: HttpStatus.forbidden);
      }
      if (package?.uploaders?.contains(email) == true) {
        return _badRequest('email already exists');
      }

      await storage.addUploader(name, email);
      return _successMessage('uploader added');
    });
  }

  @Route.delete('/<name>/uploaders/<email>')
  Future<shelf.Response> removeUploader(
      shelf.Request req, String name, String email) async {
    return req.withAuthorizations(MicropubAuthorization.write, () async {
      email = Uri.decodeComponent(email);
      final operatorEmail = req.context['email'] as String;
      var package = await storage.queryPackage(name);

      if (package?.uploaders?.contains(operatorEmail) == false) {
        return _badRequest('no permission', status: HttpStatus.forbidden);
      }
      if (package?.uploaders?.contains(email) == false) {
        return _badRequest('email not uploader');
      }

      await storage.removeUploader(name, email);
      return _successMessage('uploader removed');
    });
  }

  static shelf.Response _successMessage(String message) => {
        'success': {'message': message}
      }.asJsonResponse();

  static shelf.Response _badRequest(String message,
          {int status = HttpStatus.badRequest}) =>
      shelf.Response(
        status,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
        body: json.encode({
          'error': {'message': message}
        }),
      );

  Map<String, dynamic> _versionToJson(MicropubVersion item, Uri baseUri) {
    var name = item.pubspec['name'] as String;
    var version = item.version;
    return {
      'archive_url': baseUri
          .resolve('/packages/$name/versions/$version.tar.gz')
          .toString(),
      'pubspec': item.pubspec,
      'version': version,
    };
  }
}
