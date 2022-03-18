import 'dart:async';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:logging/logging.dart';
import 'package:micropub/src/server/controllers/api/download.dart';
import 'package:micropub/src/server/utils/middleware_log.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_router/shelf_router.dart';

import 'auth/hive.dart';
import 'controllers/api/api.dart';
import 'controllers/static.dart';
import 'options.dart';
import 'storage/hive.dart';
import 'storage/storage.dart';

class MicropubServer {
  const MicropubServer({
    required this.options,
    this.storage,
  });

  final MicropubOptions options;
  final MicropubStorage? storage;

  Future<HttpServer> run() async {
    // Initializing hive database
    Hive.init(options.directory);
    await Hive.openBox('auth.micropub');
    await Hive.openBox('packages.micropub');

    // Base services
    final auth = MicropubHiveAuth(
      options: options,
    );
    final storage = this.storage ??
        MicropubHiveStorage(
          directory: Directory(options.directory),
        );

    // Main controllers
    final api = ApiController(
      auth: auth,
      storage: storage,
      options: options,
    );
    final download = DownloadController(
      storage: storage,
    );

    /// Authenthified controllers
    final apiHandler = const Pipeline()
        .addMiddleware(logMiddleware('API'))
        .addMiddleware(corsHeaders())
        .addHandler(api.router);
    final downloadHandler = const Pipeline()
        .addMiddleware(logMiddleware('Download'))
        .addMiddleware(corsHeaders())
        .addMiddleware(auth.middleware)
        .addHandler(download.router);

    // Global routing
    final router = Router(
      notFoundHandler: const StaticController().handler,
    );
    router.mount('/api', apiHandler);
    router.mount('/packages', downloadHandler);

    var handler = const Pipeline().addMiddleware(
      logRequests(
        logger: (message, isError) {
          if (isError) {
            Logger.root.severe(message);
          } else {
            Logger.root.info(message);
          }
        },
      ),
    ).addHandler(router);

    if (options.sslCert != null && options.sslKey == null) {
      throw Exception('An SSL certificate file has been provided without key.');
    }

    final securityContext = options.sslCert != null
        ? (SecurityContext()
          ..useCertificateChain(options.sslCert!)
          ..usePrivateKey(options.sslKey!))
        : null;

    return await serve(
      handler,
      options.host,
      options.port,
      securityContext: securityContext,
    );
  }
}
