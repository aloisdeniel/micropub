import 'dart:io';

import 'package:args/args.dart';
import 'package:logging/logging.dart';
import 'package:micropub/micropub.dart';

void main(List<String> args) async {
  var parser = ArgParser();
  parser.addOption('config', abbr: 'c');

  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print('(${record.level.name}) ${record.message}');
  });

  var results = parser.parse(args);

  final config = results['config'] as String?;

  final options = await _loadOptions(config);

  var app = MicropubServer(options: options);
  var server = await app.run();
  print('Serving at http://${server.address.host}:${server.port}');
}

Future<MicropubOptions> _loadOptions(String? config) async {
  if (config != null) {
    final file = File(config);
    return await MicropubOptions.fromFile(file);
  }
  return MicropubOptions.fromEnv();
}
