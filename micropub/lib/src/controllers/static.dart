import 'dart:io';

import 'package:path/path.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';

class StaticController {
  const StaticController();

  Handler get handler {
    final scriptPath = Platform.script.toString().replaceAll(
          'file:///',
          '/',
        );
    final directory = join(
      dirname(dirname(scriptPath)),
      'static',
    );
    return createStaticHandler(
      directory,
      defaultDocument: 'index.html',
    );
  }
}
