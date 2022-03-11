import 'dart:io';
import 'package:micropub/src/controllers/api.dart';
import 'package:micropub/src/model.dart';
import 'package:micropub/src/storage/storage.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart';

part 'download.g.dart';

class DownloadController {
  const DownloadController({
    required this.storage,
  });

  final MicropubStorage storage;

  Router get router => _$DownloadControllerRouter(this);

  bool isPubClient(shelf.Request req) {
    var ua = req.headers[HttpHeaders.userAgentHeader];
    return ua != null && ua.toLowerCase().contains('dart pub');
  }

  @Route.get('/<name>/versions/<version>.tar.gz')
  Future<shelf.Response> download(
      shelf.Request req, String name, String version) async {
    return req.withAuthorizations(MicropubAuthorization.read, () async {
      if (isPubClient(req)) {
        storage.increaseDownloads(name, version);
      }

      final result = storage.download(name, version);

      return shelf.Response.ok(
        result,
        headers: {HttpHeaders.contentTypeHeader: ContentType.binary.mimeType},
      );
    });
  }
}
