import 'package:logging/logging.dart';
import 'package:shelf/shelf.dart';

Middleware logMiddleware(String name) => (innerHandler) {
      return ((request) {
        Logger.root.info('[$name]');
        return innerHandler(request);
      });
    };
