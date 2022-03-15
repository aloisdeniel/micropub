import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:website/services/model.dart';

class ApiClient {
  const ApiClient({
    required this.accessKey,
    this.baseUri = kDebugMode ? 'http://localhost:8080/api' : '/api',
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
    return _get(
      '/packages',
      (x) {
        return MicropubQueryResult.fromJson(x);
      },
      query: {
        if (size != null) 'size': size.toString(),
        if (page != null) 'page': page.toString(),
        if (sort != null) 'sort': sort.toString(),
        if (query != null) 'q': query,
      },
    );
  }

  Future<MicropubPackageDetails> getPackageDetails(String name) {
    return _get(
      '/packages/${Uri.encodeComponent(name)}/details',
      (x) => MicropubPackageDetails.fromJson(x),
    );
  }

  Future<List<MicropubAccessKey>> adminAccessKeys() {
    return _get(
      '/admin/users',
      (x) => [
        ...(x as List).map((e) => MicropubAccessKey.fromJson(e)),
      ],
    );
  }

  Future<MicropubAccessKey> adminCreateAccessKey(
    String email,
    bool read,
    bool write,
    bool admin,
  ) {
    return _post(
      '/admin/users',
      (x) => MicropubAccessKey.fromJson(x),
      body: {
        'email': email,
        'authorizations': [
          if (read) 'read',
          if (write) 'write',
          if (admin) 'admin',
        ]
      },
    );
  }

  Future<void> adminRevokeAccessKey(String key) {
    return _delete(
      '/admin/users/$key',
      (x) {},
    );
  }

  Uri _buildUri(
    String path, {
    Map<String, String> query = const <String, String>{},
  }) {
    final queryUri = query.isEmpty
        ? ''
        : '?' +
            Uri(
              queryParameters: query,
            ).query;
    return Uri.parse('$baseUri$path$queryUri');
  }

  Future<T> _get<T>(
    String path,
    T Function(dynamic body) deserialize, {
    Map<String, String> query = const <String, String>{},
  }) async {
    final result = await get(
      _buildUri(path, query: query),
      headers: {
        'authorization': 'bearer $accessKey',
      },
    );
    return deserialize(jsonDecode(result.body));
  }

  Future<T> _post<T>(
    String path,
    T Function(dynamic body) deserialize, {
    Map<String, String> query = const <String, String>{},
    dynamic body,
  }) async {
    final result = await post(
      _buildUri(path, query: query),
      body: body != null ? jsonEncode(body) : null,
      headers: {
        'authorization': 'bearer $accessKey',
        if (body != null) 'content-type': 'application/json'
      },
    );
    return deserialize(jsonDecode(result.body));
  }

  Future<T> _delete<T>(
    String path,
    T Function(dynamic body) deserialize, {
    Map<String, String> query = const <String, String>{},
    dynamic body,
  }) async {
    final result = await delete(
      _buildUri(path, query: query),
      body: body != null ? jsonEncode(body) : null,
      headers: {
        'authorization': 'bearer $accessKey',
        if (body != null) 'content-type': 'application/json'
      },
    );
    return deserialize(jsonDecode(result.body));
  }
}
