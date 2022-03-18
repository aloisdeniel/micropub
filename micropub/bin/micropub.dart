import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:args/command_runner.dart';
import 'package:logging/logging.dart';
import 'package:micropub/client.dart';
import 'package:micropub/server.dart';
import 'package:micropub/src/server/storage/fake.dart';
import 'package:micropub/src/server/utils/yaml.dart';
import 'package:path/path.dart';

void main(List<String> args) async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print('(${record.level.name}) ${record.message}');
  });

  final runner = CommandRunner(
      "micropub", "A minimalist private pub server for small teams.")
    ..addCommand(ServerCommand())
    ..addCommand(PublishCommand());

  await runner.run(args);
}

class ServerCommand extends Command {
  @override
  String get name => "server";

  @override
  String get description => "Start a micropub server.";

  ServerCommand() {
    argParser.addOption('config', abbr: 'c');
    argParser.addFlag('fake', abbr: 'f', defaultsTo: false);
  }

  @override
  Future<void> run() async {
    final results = argResults;
    if (results != null) {
      final config = results['config'] as String?;
      final fake = results['fake'] as bool;

      if (fake) print('Faked mode');

      final options = await _loadOptions(config);

      var app = MicropubServer(
        options: options,
        storage: fake ? MicropubFakeStorage() : null,
      );
      final server = await app.run();
      print(
          '[Micropub] Serving at https://${server.address.host}:${server.port}');
    }
  }

  Future<MicropubOptions> _loadOptions(String? config) async {
    if (config != null) {
      final file = File(config);
      return await MicropubOptions.fromFile(file);
    }
    return MicropubOptions.fromEnv();
  }
}

class PublishCommand extends Command {
  @override
  String get name => "publish";

  @override
  String get description =>
      'Used to remove the need for dart and pub for publishing packages'
      '(for example for CI).'
      'This also removes the need for SSL and bypass package verifications';

  PublishCommand() {
    argParser.addOption('key', abbr: 'k');
  }

  @override
  Future<void> run() async {
    final results = argResults;
    if (results != null) {
      final keyArg = results['key'] as String?;

      if (keyArg == null &&
          !Platform.environment.containsKey('MICROPUB_ACCESS_KEY')) {
        throw Exception('No access key');
      }

      final key = keyArg ?? Platform.environment['MICROPUB_ACCESS_KEY']!;

      final location =
          Directory(results.rest.isNotEmpty ? results.rest.first : '.');

      final pubspecFile = File(join(location.path, 'pubspec.yaml'));
      if (!pubspecFile.existsSync()) throw Exception('No pubspec.yaml file');

      final pubspec = loadYamlAsMap(await pubspecFile.readAsString())!;

      if (!pubspec.containsKey('publish_to')) {
        throw Exception(
            'A `publish_to` micropub host server address must be provided in pubspec file');
      }

      final host = pubspec['publish_to'] as String;
      final name = pubspec['name'] as String;
      final version = pubspec['version'] as String;

      final archive = Archive();

      await for (var item in location.list(recursive: true)) {
        if (item is File) {
          var relativePath = item.path.replaceFirst(location.path, '');
          if (relativePath.startsWith('/')) {
            relativePath = relativePath.substring(1);
          }
          if (![
            '.dart_tool/',
            '.packages',
            '.pubspec.lock',
          ].any((x) => relativePath.startsWith(x))) {
            final content = await item.readAsBytes();
            final archiveFile = ArchiveFile(
              relativePath,
              content.lengthInBytes,
              content,
            );
            archive.addFile(archiveFile);
          }
        }
      }

      final tarData = TarEncoder().encode(archive);

      final client = MicropubApiClient(
        accessKey: key,
        baseUri: host,
      );

      await client.uploadPackage(
        name: name,
        version: version,
        archive: tarData,
      );
    }
  }
}
