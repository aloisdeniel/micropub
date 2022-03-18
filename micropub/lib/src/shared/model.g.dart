// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MicropubVersion _$$_MicropubVersionFromJson(Map json) => _$_MicropubVersion(
      version: json['version'] as String,
      pubspec: Map<String, dynamic>.from(json['pubspec'] as Map),
      pubspecYaml: json['pubspecYaml'] as String?,
      uploader: json['uploader'] as String?,
      readme: json['readme'] as String?,
      changelog: json['changelog'] as String?,
      createdAt: jsonToDateTime(json['createdAt']),
    );

Map<String, dynamic> _$$_MicropubVersionToJson(_$_MicropubVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'pubspecYaml': instance.pubspecYaml,
      'uploader': instance.uploader,
      'readme': instance.readme,
      'changelog': instance.changelog,
      'createdAt': jsonFromDateTime(instance.createdAt),
    };

_$_MicropubPackage _$$_MicropubPackageFromJson(Map json) => _$_MicropubPackage(
      name: json['name'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) =>
              MicropubVersion.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      uploaders: (json['uploaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      download: json['download'] as int?,
      createdAt: jsonToDateTime(json['createdAt']),
      updatedAt: jsonToDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$_MicropubPackageToJson(_$_MicropubPackage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions.map((e) => e.toJson()).toList(),
      'uploaders': instance.uploaders,
      'download': instance.download,
      'createdAt': jsonFromDateTime(instance.createdAt),
      'updatedAt': jsonFromDateTime(instance.updatedAt),
    };

_$_MicropubPackageDetails _$$_MicropubPackageDetailsFromJson(Map json) =>
    _$_MicropubPackageDetails(
      package: MicropubPackage.fromJson(
          Map<String, dynamic>.from(json['package'] as Map)),
      readme: json['readme'] as String?,
    );

Map<String, dynamic> _$$_MicropubPackageDetailsToJson(
        _$_MicropubPackageDetails instance) =>
    <String, dynamic>{
      'package': instance.package.toJson(),
      'readme': instance.readme,
    };

_$_MicropubMe _$$_MicropubMeFromJson(Map json) => _$_MicropubMe(
      email: json['email'] as String,
      authorizations: (json['authorizations'] as List<dynamic>)
          .map((e) => $enumDecode(_$MicropubAuthorizationEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_MicropubMeToJson(_$_MicropubMe instance) =>
    <String, dynamic>{
      'email': instance.email,
      'authorizations': instance.authorizations
          .map((e) => _$MicropubAuthorizationEnumMap[e])
          .toList(),
    };

const _$MicropubAuthorizationEnumMap = {
  MicropubAuthorization.admin: 'admin',
  MicropubAuthorization.read: 'read',
  MicropubAuthorization.write: 'write',
};

_$_MicropubQueryResult _$$_MicropubQueryResultFromJson(Map json) =>
    _$_MicropubQueryResult(
      count: json['count'] as int,
      packages: (json['packages'] as List<dynamic>)
          .map((e) =>
              MicropubPackage.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_MicropubQueryResultToJson(
        _$_MicropubQueryResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };

_$_MicropubAccessKey _$$_MicropubAccessKeyFromJson(Map json) =>
    _$_MicropubAccessKey(
      id: json['id'] as String,
      key: json['key'] as String,
      email: json['email'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      authorizations: (json['authorizations'] as List<dynamic>)
          .map((e) => $enumDecode(_$MicropubAuthorizationEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_MicropubAccessKeyToJson(
        _$_MicropubAccessKey instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'email': instance.email,
      'creationDate': instance.creationDate.toIso8601String(),
      'authorizations': instance.authorizations
          .map((e) => _$MicropubAuthorizationEnumMap[e])
          .toList(),
    };
