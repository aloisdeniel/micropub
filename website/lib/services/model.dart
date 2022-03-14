// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

dynamic jsonFromDateTime(DateTime? x) => x?.millisecondsSinceEpoch;
DateTime? jsonToDateTime(dynamic x) =>
    x is int ? DateTime.fromMillisecondsSinceEpoch(x) : null;

const jsonDateTime =
    JsonKey(fromJson: jsonToDateTime, toJson: jsonFromDateTime);

@Freezed()
class MicropubVersion with _$MicropubVersion {
  const factory MicropubVersion({
    required String version,
    required Map<String, dynamic> pubspec,
    String? pubspecYaml,
    String? uploader,
    String? readme,
    String? changelog,
    @jsonDateTime DateTime? createdAt,
  }) = _MicropubVersion;

  factory MicropubVersion.fromJson(Map<String, dynamic> map) =>
      _$MicropubVersionFromJson(map);
}

@Freezed()
class MicropubPackage with _$MicropubPackage {
  const factory MicropubPackage({
    required String name,
    required List<MicropubVersion> versions,
    List<String>? uploaders,
    int? download,
    @jsonDateTime DateTime? createdAt,
    @jsonDateTime DateTime? updatedAt,
  }) = _MicropubPackage;

  factory MicropubPackage.fromJson(Map<String, dynamic> map) =>
      _$MicropubPackageFromJson(map);
}

@Freezed()
class MicropubMe with _$MicropubMe {
  const factory MicropubMe({
    required String email,
  }) = _MicropubMe;

  factory MicropubMe.fromJson(Map<String, dynamic> map) =>
      _$MicropubMeFromJson(map);
}

@Freezed()
class MicropubQueryResult with _$MicropubQueryResult {
  const factory MicropubQueryResult({
    required int count,
    required List<MicropubPackage> packages,
  }) = _MicropubQueryResult;

  factory MicropubQueryResult.fromJson(Map<String, dynamic> map) =>
      _$MicropubQueryResultFromJson(map);
}

@Freezed()
class MicropubAccessKey with _$MicropubAccessKey {
  const factory MicropubAccessKey({
    required String key,
    required String email,
    required List<MicropubAuthorization> authorizations,
  }) = _MicropubAccessKey;

  factory MicropubAccessKey.fromJson(Map<String, dynamic> map) =>
      _$MicropubAccessKeyFromJson(map);
}

enum MicropubAuthorization {
  // Can create access key
  admin,
  // Can read packages
  read,
  // Can update packages and versions
  write,
}

MicropubAuthorization micropubAuthorizationFromString(String value) =>
    _$MicropubAuthorizationEnumMap.entries
        .firstWhere((x) => x.value == value)
        .key;
