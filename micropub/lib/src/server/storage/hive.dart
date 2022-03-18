import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:pub_semver/pub_semver.dart' as semver;
import 'package:micropub/src/shared/model.dart';
import 'package:collection/collection.dart';
import 'package:micropub/src/server/storage/storage.dart';

class MicropubHiveStorage extends MicropubStorage {
  MicropubHiveStorage({
    required this.directory,
  });

  final Directory directory;
  final Box box = Hive.box('packages.micropub');

  @override
  Future<void> addUploader(String name, String email) async {
    final package = await _getPackage(name);
    await _putPackage(
      package.copyWith(
        uploaders: [
          if (package.uploaders != null) ...package.uploaders!,
          email,
        ],
      ),
    );
  }

  @override
  Future<void> addVersion(String name, MicropubVersion version) async {
    final package = await _getPackage(name);

    final versions = [
      ...package.versions,
      version,
    ];

    versions.sort((a, b) {
      return semver.Version.prioritize(
          semver.Version.parse(a.version), semver.Version.parse(b.version));
    });

    await _putPackage(
      package.copyWith(
        versions: versions,
      ),
    );
  }

  @override
  void increaseDownloads(String name, String version) async {
    if (!_hasPackage(name)) return null;
    final package = await _getPackage(name);
    await _putPackage(
      package.copyWith(
        download: (package.download ?? 0) + 1,
      ),
    );
  }

  @override
  Future<MicropubPackage?> queryPackage(String name) async {
    if (!_hasPackage(name)) return null;
    return await _getPackage(name);
  }

  static MicropubQueryResult filterPackages(
    List<MicropubPackage> packages, {
    required int size,
    required int page,
    required String sort,
    String? keyword,
    String? uploader,
    String? dependency,
  }) {
    var result = packages;

    // Keyword Filtering
    if (keyword != null && keyword.trim().isNotEmpty) {
      result = [
        ...result.where(
          (x) => x.name.toLowerCase().contains(
                keyword.toLowerCase().trim(),
              ),
        ),
      ];
    }

    // Uploader Filtering
    if (uploader != null && uploader.trim().isNotEmpty) {
      result = [
        ...result.where(
          (x) => (x.uploaders ?? []).any(
            (x) => x.toLowerCase().trim() == uploader.toLowerCase().trim(),
          ),
        ),
      ];
    }

    // Dependency Filtering
    if (dependency != null && dependency.trim().isNotEmpty) {
      result = [
        ...result.where((x) => x.versions
            .any((version) => version.pubspec.containsKey(dependency))),
      ];
    }

    // Ordering
    result = result.toList()
      ..sort(
        (x, y) {
          if (sort == 'updatedAt') {
            final dx = x.updatedAt;
            final dy = y.updatedAt;
            if (dx != null && dy != null) return dy.compareTo(dx);
            if (dy != null) return 1;
            if (dx != null) return -1;
            return 0;
          }
          return y.name.compareTo(x.name);
        },
      );

    return MicropubQueryResult(
      count: result.length,
      packages: [
        // Pagination
        ...result.skip(size * page).take(size),
      ],
    );
  }

  @override
  Future<MicropubQueryResult> queryPackages({
    required int size,
    required int page,
    required String sort,
    String? keyword,
    String? uploader,
    String? dependency,
  }) async {
    final allPackages = _getAllPackages();
    return filterPackages(
      allPackages,
      size: size,
      page: page,
      sort: sort,
      keyword: keyword,
      uploader: uploader,
      dependency: dependency,
    );
  }

  @override
  Future<void> removeUploader(String name, String email) async {
    final package = await _getPackage(name);
    await _putPackage(
      package.copyWith(
        uploaders: [
          if (package.uploaders != null)
            ...package.uploaders!.where((x) => x != email),
        ],
      ),
    );
  }

  @override
  Stream<List<int>> download(String name, String version) async* {
    final file = await _getPackageArchive(name, version);
    final content = await file.readAsBytes();
    yield content;
  }

  @override
  Future<void> upload(String name, String version, List<int> content) async {
    final file = await _getPackageArchive(name, version);
    await file.writeAsBytes(content);
  }

  @override
  Future<String?> loadReadme(String name) async {
    final package = await queryPackage(name);
    if (package == null) throw Exception('Package not found');
    final archive =
        await _getPackageArchive(name, package.versions.first.version);

    final inputStream = InputFileStream(archive.path);
    final decoded = TarDecoder().decodeBuffer(inputStream);
    final readme = decoded.files.firstWhereOrNull(
      (x) => x.name.toLowerCase() == 'readme.md',
    );

    if (readme == null) return null;

    final outputStream = OutputStream();
    readme.writeContent(outputStream);

    return utf8.decode(outputStream.getBytes());
  }

  Future<File> _getPackageArchive(String name, String version) async {
    final directory = Directory(path.join(
      this.directory.path,
      'packages',
    ));
    if (!directory.existsSync()) {
      await directory.create(recursive: true);
    }

    return File(path.join(directory.path, '$name-$version'));
  }

  bool _hasPackage(String name) {
    return box.containsKey(name);
  }

  List<MicropubPackage> _getAllPackages() {
    return box.values
        .map((data) => MicropubPackage.fromJson(_asNormalizedJson(data)))
        .toList();
  }

  Future<MicropubPackage> _getPackage(String name) async {
    final data = await box.get(name);

    return data != null
        ? MicropubPackage.fromJson(_asNormalizedJson(data))
        : MicropubPackage(
            name: name,
            versions: [],
            download: 0,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            uploaders: [],
          );
  }

  Future<void> _putPackage(MicropubPackage package) async {
    await box.put(package.name, package.toJson());
  }
}

dynamic _asNormalizedJson(dynamic value) {
  if (value is Map) {
    return value.map<String, dynamic>(
      (key, value) {
        return MapEntry(key.toString(), _asNormalizedJson(value));
      },
    );
  }
  if (value is List) {
    return [
      ...value.map(_asNormalizedJson),
    ];
  }
  return value;
}
