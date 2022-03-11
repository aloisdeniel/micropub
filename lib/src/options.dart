import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'options.freezed.dart';
part 'options.g.dart';

@Freezed()
class MicropubOptions with _$MicropubOptions {
  const MicropubOptions._();
  const factory MicropubOptions({
    required String directory,
    required String adminKey,
    required String host,
    required int port,
  }) = _MicropubOptions;

  factory MicropubOptions.fromEnv() {
    String key(String key) {
      key = 'MICROPUB_$key';
      if (!Platform.environment.containsKey(key)) {
        throw Exception('Missing $key environment key');
      }
      return Platform.environment[key]!;
    }

    return MicropubOptions(
      directory: key('DIRECTORY'),
      adminKey: key('ADMIN_KEY'),
      host: key('HOST'),
      port: int.parse(key('PORT')),
    );
  }

  static Future<MicropubOptions> fromFile(File file) async {
    final content = await file.readAsString();
    return MicropubOptions.fromJson(jsonDecode(content));
  }

  factory MicropubOptions.fromJson(Map<String, dynamic> map) =>
      _$MicropubOptionsFromJson(map);
}
