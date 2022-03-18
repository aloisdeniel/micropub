import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'options.freezed.dart';
part 'options.g.dart';

@Freezed()
class MicropubOptions with _$MicropubOptions {
  const MicropubOptions._();
  const factory MicropubOptions({
    required String adminKey,
    required String host,
    required int port,
    @Default('.') String directory,
    String? sslCert,
    String? sslKey,
  }) = _MicropubOptions;

  factory MicropubOptions.fromEnv() {
    String? optionalKey(String key) {
      return Platform.environment['MICROPUB_$key'];
    }

    String key(String key, [String? defaultValue]) {
      key = 'MICROPUB_$key';
      if (!Platform.environment.containsKey(key)) {
        if (defaultValue == null) {
          throw Exception('Missing $key environment key');
        }
        return defaultValue;
      }
      return Platform.environment[key]!;
    }

    return MicropubOptions(
      directory: key('DIRECTORY', '.'),
      adminKey: key('ADMIN_KEY'),
      host: key('HOST'),
      port: int.parse(
        key('PORT'),
      ),
      sslCert: optionalKey('SSL_CERT'),
      sslKey: optionalKey('SSL_KEY'),
    );
  }

  static Future<MicropubOptions> fromFile(File file) async {
    final content = await file.readAsString();
    return MicropubOptions.fromJson(jsonDecode(content));
  }

  factory MicropubOptions.fromJson(Map<String, dynamic> map) =>
      _$MicropubOptionsFromJson(map);
}
