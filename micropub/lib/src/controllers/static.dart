import 'dart:io';

import 'package:path/path.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';

class StaticController {
  const StaticController();

  Handler get handler {
    final directory = join(
      dirname(Directory.current.path),
      'static',
    );
    return createStaticHandler(
      directory,
      defaultDocument: 'index.html',
    );
  }
}
