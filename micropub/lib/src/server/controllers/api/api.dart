import 'dart:convert';
import 'dart:io';
import 'package:micropub/server.dart';
import 'package:micropub/src/server/auth/auth.dart';
import 'package:micropub/src/server/storage/storage.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart';

import 'admin.dart';
import 'packages.dart';

part 'api.g.dart';

class ApiController {
  const ApiController({
    required this.auth,
    required this.storage,
    required this.options,
  });

  final MicropubOptions options;
  final MicropubAuth auth;
  final MicropubStorage storage;

  Router get router {
    final result = _$ApiControllerRouter(this);

    final admin = shelf.Pipeline()
        .addMiddleware(auth.middleware)
        .addHandler(AdminApiController(
          auth: auth,
        ).router);

    final packages = shelf.Pipeline()
        .addMiddleware(auth.middleware)
        .addHandler(PackagesApiController(
          auth: auth,
          storage: storage,
        ).router);

    result.mount(
      '/admin',
      admin,
    );
    result.mount(
      '/packages',
      packages,
    );
    return result;
  }

  @Route.get('/me')
  Future<shelf.Response> me(shelf.Request req) async {
    return auth.middleware((req) {
      return MicropubMe(
        email: req.context['email'] as String,
        authorizations:
            req.context['authorizations'] as List<MicropubAuthorization>,
      ).toJson().asJsonResponse();
    })(req);
  }

  @Route.get('/info')
  Future<shelf.Response> info(shelf.Request req) async {
    return MicropubServerInfo(
      distantHostUrl:
          options.distantHostUrl ?? 'http://${options.host}:${options.port}',
      adminEmail: options.adminEmail,
      name: options.name,
    ).toJson().asJsonResponse();
  }
}

extension RequestExtensions on shelf.Request {
  Future<shelf.Response> withAuthorizations(
    MicropubAuthorization authorization,
    Future<shelf.Response> Function() execute,
  ) {
    final authorizations =
        context['authorizations'] as List<MicropubAuthorization>? ?? [];
    if (authorizations.contains(authorization)) return execute();
    return Future.value(shelf.Response.forbidden('Unauthorized'));
  }
}

extension ResponseMapExtensions on dynamic {
  shelf.Response asJsonResponse() => shelf.Response.ok(
        json.encode(this),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          'Access-Control-Allow-Origin': '*'
        },
      );
}
