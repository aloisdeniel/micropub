import 'package:micropub/src/auth/auth.dart';
import 'package:micropub/src/model.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class MicropubHiveAuth extends MicropubAuth {
  MicropubHiveAuth({
    required String adminKey,
  }) : super(adminKey);

  final box = Hive.box('auth.micropub');

  @override
  Future<MicropubAccessKey?> getAccessKey(String key) async {
    if (!box.containsKey(key)) {
      return null;
    }

    return MicropubAccessKey.fromJson(box.get(key));
  }

  @override
  Future<MicropubAccessKey> createKey({
    required String email,
    required List<MicropubAuthorization> authorizations,
  }) async {
    final key = uuid.v4();
    final accessKey = MicropubAccessKey(
      key: key,
      email: email,
      authorizations: authorizations,
    );
    await box.put(key, accessKey.toJson());
    return accessKey;
  }

  @override
  Future<void> revokeKey(String key) {
    return box.delete(key);
  }
}
