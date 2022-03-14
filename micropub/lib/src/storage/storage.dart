import 'package:micropub/src/model.dart';

abstract class MicropubStorage {
  Future<MicropubPackage?> queryPackage(String name);

  Future<void> addVersion(String name, MicropubVersion version);

  Future<void> addUploader(String name, String email);

  Future<void> removeUploader(String name, String email);

  void increaseDownloads(String name, String version);

  Future<MicropubQueryResult> queryPackages({
    required int size,
    required int page,
    required String sort,
    String? keyword,
    String? uploader,
    String? dependency,
  });

  Stream<List<int>> download(String name, String version);

  Future<void> upload(String name, String version, List<int> content);
}
