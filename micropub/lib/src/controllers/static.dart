import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';

class StaticController {
  const StaticController();

  Handler get handler {
    return createStaticHandler(
      'static',
      defaultDocument: 'index.html',
    );
  }
}
