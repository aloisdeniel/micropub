// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MicropubOptions _$$_MicropubOptionsFromJson(Map<String, dynamic> json) =>
    _$_MicropubOptions(
      adminKey: json['adminKey'] as String,
      adminEmail: json['adminEmail'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      directory: json['directory'] as String? ?? '.',
      name: json['name'] as String?,
      distantHostUrl: json['distantHostUrl'] as String?,
      sslCert: json['sslCert'] as String?,
      sslKey: json['sslKey'] as String?,
    );

Map<String, dynamic> _$$_MicropubOptionsToJson(_$_MicropubOptions instance) =>
    <String, dynamic>{
      'adminKey': instance.adminKey,
      'adminEmail': instance.adminEmail,
      'host': instance.host,
      'port': instance.port,
      'directory': instance.directory,
      'name': instance.name,
      'distantHostUrl': instance.distantHostUrl,
      'sslCert': instance.sslCert,
      'sslKey': instance.sslKey,
    };
