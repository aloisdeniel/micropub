// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MicropubOptions _$$_MicropubOptionsFromJson(Map<String, dynamic> json) =>
    _$_MicropubOptions(
      adminKey: json['adminKey'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      directory: json['directory'] as String? ?? '.',
      sslCert: json['sslCert'] as String?,
      sslKey: json['sslKey'] as String?,
    );

Map<String, dynamic> _$$_MicropubOptionsToJson(_$_MicropubOptions instance) =>
    <String, dynamic>{
      'adminKey': instance.adminKey,
      'host': instance.host,
      'port': instance.port,
      'directory': instance.directory,
      'sslCert': instance.sslCert,
      'sslKey': instance.sslKey,
    };
