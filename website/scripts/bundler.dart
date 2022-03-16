// ignore_for_file: avoid_print

import 'dart:io';
import 'package:path/path.dart';

Future<void> main() async {
  final input = Directory('../build/web');
  final output = Directory('../../micropub/bin/static/');
  await _copyDirectory(input, output);
}

Future<void> _copyDirectory(Directory input, Directory output) async {
  if (!output.existsSync()) await output.create();
  await for (var item in input.list()) {
    final targetPath = join(output.path, basename(item.path));
    if (item is File) {
      await item.copy(targetPath);
    } else if (item is Directory) {
      await _copyDirectory(item, Directory(targetPath));
    }
  }
}
