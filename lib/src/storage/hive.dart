import 'dart:async';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:micropub/src/model.dart';
import 'package:micropub/src/storage/storage.dart';

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
    await _putPackage(
      package.copyWith(
        versions: [
          ...package.versions,
          version,
        ],
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

    var result = MicropubQueryResult(
      count: allPackages.length,
      packages: allPackages,
    );

    // Keyword Filtering
    if (keyword != null) {
      result = MicropubQueryResult(
        count: result.count,
        packages: [
          ...result.packages.where((x) =>
              x.name.toLowerCase().contains(keyword.toLowerCase().trim())),
        ],
      );
    }

    // Uploader Filtering
    if (uploader != null) {
      result = MicropubQueryResult(
        count: result.count,
        packages: [
          ...result.packages.where((x) => (x.uploaders ?? []).any(
              (x) => x.toLowerCase().trim() == uploader.toLowerCase().trim())),
        ],
      );
    }

    // Dependency Filtering
    if (dependency != null) {
      result = MicropubQueryResult(
        count: result.count,
        packages: [
          ...result.packages.where((x) => x.versions
              .any((version) => version.pubspec.containsKey(dependency))),
        ],
      );
    }

    // Ordering
    result = MicropubQueryResult(
      count: result.count,
      packages: result.packages.toList()
        ..sort((x, y) {
          if (sort == 'updatedAt') {
            final dx = x.updatedAt;
            final dy = y.updatedAt;
            if (dx != null && dy != null) return dy.compareTo(dx);
            if (dy != null) return 1;
            if (dx != null) return -1;
            return 0;
          }
          return y.name.compareTo(x.name);
        }),
    );

    // Pagination
    result = MicropubQueryResult(
      count: result.count,
      packages: [
        ...result.packages.skip(size * page).take(page),
      ],
    );

    return result;
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

  Future<File> _getPackageArchive(String name, String version) async {
    if (!directory.existsSync()) {
      await directory.create(recursive: true);
    }

    return File(path.join('packages', '$name-$version'));
  }

  bool _hasPackage(String name) {
    return box.containsKey(name);
  }

  List<MicropubPackage> _getAllPackages() {
    return box.values.map((data) => MicropubPackage.fromJson(data)).toList();
  }

  Future<MicropubPackage> _getPackage(String name) async {
    final data = await box.get(name) as Map<String, dynamic>?;

    return data != null
        ? MicropubPackage.fromJson(data)
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
