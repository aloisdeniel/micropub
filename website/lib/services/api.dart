import 'dart:convert';

import 'package:http/http.dart';
import 'package:website/services/model.dart';

class ApiClient {
  const ApiClient({
    required this.accessKey,
    this.baseUri = '/api',
  });

  final String baseUri;
  final String? accessKey;

  Future<MicropubMe> me() {
    return _get('/me', (x) => MicropubMe.fromJson(x));
  }

  Future<MicropubQueryResult> getPackages({
    int? size,
    int? page,
    String? sort,
    String? query,
  }) {
    return _get('/packages', (x) => MicropubQueryResult.fromJson(x), query: {
      if (size != null) 'size': size,
      if (page != null) 'page': page,
      if (sort != null) 'sort': sort,
      if (query != null) 'q': query,
    });
  }

  Future<T> _get<T>(
    String path,
    T Function(dynamic body) deserialize, {
    Map<String, Object> query = const <String, Object>{},
  }) async {
    final base = Uri.parse('$baseUri$path');
    final queryUri = Uri(
      host: base.host,
      pathSegments: base.pathSegments,
      scheme: base.scheme,
      queryParameters: query,
    );
    final result = await get(
      queryUri,
      headers: {
        'authorization': 'bearer $accessKey',
      },
    );
    return deserialize(jsonDecode(result.body));
  }
}
