import 'dart:convert';
import 'package:micropub/src/auth/auth.dart';
import 'package:micropub/src/controllers/api/api.dart';
import 'package:micropub/src/model.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart';

part 'admin.g.dart';

class AdminApiController {
  const AdminApiController({
    required this.auth,
  });

  final MicropubAuth auth;

  Router get router => _$AdminApiControllerRouter(this);

  @Route.get('/users')
  Future<shelf.Response> getAccessKeys(shelf.Request req) async {
    return req.withAuthorizations(MicropubAuthorization.admin, () async {
      final keys = await auth.getAllAccessKeys();
      keys.sort((a, b) => b.creationDate.compareTo(a.creationDate));

      return [
        // Hiding everything execpt the first 3 chars
        ...keys.map((e) => e.copyWith(
              key: e.key.replaceRange(
                3,
                e.key.length,
                'X' * (e.key.length - 3),
              ),
            ))
      ].asJsonResponse();
    });
  }

  @Route.post('/users')
  Future<shelf.Response> createAccessKey(shelf.Request req) async {
    return req.withAuthorizations(MicropubAuthorization.admin, () async {
      final body = await req.readAsString();
      final decoded = jsonDecode(body);

      final email = decoded['email'] as String?;
      final authorizations = decoded['authorizations'] as List?;

      if (email == null || email.trim().isEmpty) {
        throw Exception('Provided email is empty');
      }

      final result = await auth.createKey(
        email: email,
        authorizations: [
          ...(authorizations ?? ['read'])
              .cast<String>()
              .map(micropubAuthorizationFromString),
        ],
      );

      return result.toJson().asJsonResponse();
    });
  }

  @Route.delete('/users/<key>')
  Future<shelf.Response> revokeAccessKey(shelf.Request req, String key) async {
    return req.withAuthorizations(MicropubAuthorization.admin, () async {
      await auth.revokeKey(key);
      return true.asJsonResponse();
    });
  }
}
