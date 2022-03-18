import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:micropub/src/shared/model.dart';
import 'package:path/path.dart';

class MicropubApiClient {
  const MicropubApiClient({
    required this.accessKey,
    this.baseUri = '/',
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

  Future<void> uploadPackage({
    required String name,
    required String version,
    required List<int> archive,
  }) async {
    final gzipArchive = GZipCodec().encode(archive);

    final file = MultipartFile(
      'file',
      Stream.fromIterable([gzipArchive]),
      gzipArchive.length,
      filename: '$name-$version.tar',
      contentType: MediaType('application', 'x-tar'),
    );

    final request =
        MultipartRequest("POST", _buildUri('/packages/versions/newUpload'));
    request.headers.addAll({
      'authorization': 'bearer $accessKey',
    });
    request.files.add(file);
    final response = await request.send();
    if (response.statusCode == 302) {
      print("Uploaded!");
      await response.stream.toList();
    } else {
      throw Exception('Upload failed with code ${response.statusCode}');
    }
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
    final baseUri = this.baseUri.endsWith('/')
        ? this.baseUri.substring(0, this.baseUri.length - 1)
        : this.baseUri;
    return Uri.parse('$baseUri/api$path$queryUri');
  }

  Future<T> _get<T>(
    String path,
    T Function(dynamic body) deserialize, {
    Map<String, String> query = const <String, String>{},
  }) async {
    final result = await get(
      _buildUri(path, query: query),
      headers: headers,
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
      headers: headers,
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
      headers: headers,
    );
    return deserialize(jsonDecode(result.body));
  }

  Map<String, String>? get headers => {
        'authorization': 'bearer $accessKey',
        'content-type': 'application/json'
      };
}
