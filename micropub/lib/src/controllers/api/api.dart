import 'dart:convert';
import 'dart:io';
import 'package:micropub/src/auth/auth.dart';
import 'package:micropub/src/model.dart';
import 'package:micropub/src/storage/storage.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart';

import 'admin.dart';
import 'packages.dart';

part 'api.g.dart';

class ApiController {
  const ApiController({
    required this.auth,
    required this.storage,
  });

  final MicropubAuth auth;
  final MicropubStorage storage;

  Router get router {
    final result = _$ApiControllerRouter(this);
    result.mount(
        '/admin',
        AdminApiController(
          auth: auth,
        ).router);
    result.mount(
        '/packages',
        PackagesApiController(
          auth: auth,
          storage: storage,
        ).router);
    return result;
  }

  @Route.get('/me')
  Future<shelf.Response> me(shelf.Request req) async {
    return MicropubMe(
      email: req.context['email'] as String,
      authorizations:
          req.context['authorizations'] as List<MicropubAuthorization>,
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
