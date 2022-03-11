import 'package:logging/logging.dart';
import 'package:micropub/src/model.dart';
import 'package:shelf/shelf.dart';

abstract class MicropubAuth {
  const MicropubAuth(this.adminKey);

  final String adminKey;

  Future<MicropubAccessKey?> getAccessKey(String key);

  Future<MicropubAccessKey> createKey({
    required String email,
    required List<MicropubAuthorization> authorizations,
  });

  Future<void> revokeKey(String key);

  Handler middleware(Handler innerHandler) {
    return (Request request) async {
      Logger.root.info('[Auth]');
      final header = request.headers['authorization'];
      if (header != null && header.toLowerCase().startsWith('bearer ')) {
        final key = header.substring(7);
        Logger.root.info(' Authorization header found');
        if (key == adminKey) {
          Logger.root.info(' Is admin');
          return innerHandler(
            request.change(
              context: {
                ...request.context,
                'email': 'admin',
                'authorizations': [
                  MicropubAuthorization.admin,
                  MicropubAuthorization.read,
                  MicropubAuthorization.write,
                ],
              },
            ),
          );
        }
        final accessKey = await getAccessKey(key);
        if (accessKey != null) {
          return innerHandler(
            request.change(
              context: {
                ...request.context,
                'email': accessKey.email,
                'authorizations': accessKey.authorizations,
              },
            ),
          );
        }
      }

      return Response.forbidden('Not authorized');
    };
  }
}
