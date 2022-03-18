import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:micropub/client.dart';
import 'package:website/state/state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateNotifier extends ValueNotifier<AppState> {
  AppStateNotifier() : super(const AppState.initializing()) {
    unawaited(initialize());
  }

  static AppStateNotifier of(BuildContext context) {
    return Provider.of<AppStateNotifier>(context, listen: false);
  }

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final accessKey = prefs.getString('access-key');
    if (accessKey == null) {
      value = const AppState.notAuthenticated();
    } else {
      await authenticate(accessKey);
    }
  }

  Future<void> authenticate(String accessKey) async {
    try {
      value = const AppState.authenticating();
      final client = MicropubApiClient(
        baseUri: kDebugMode ? 'http://localhost:8080/' : '/',
        accessKey: accessKey,
      );
      final me = await client.me();
      value = AppState.authenticated(
        me: me,
        client: client,
        package: const PackageState.notLoaded(),
        packages: const PackagesState.notLoaded(
          page: -1,
          pageSize: 100,
          query: '',
        ),
        admin: me.authorizations.contains(MicropubAuthorization.admin)
            ? const AdminState.notLoaded()
            : const AdminState.notAuthorized(),
      );

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access-key', accessKey);
    } catch (e) {
      value = const AppState.authenticationFailed();
    }
  }

  Future<void> refreshAdmin() {
    return value.maybeMap(
      authenticated: (authenticated) {
        return authenticated.admin.maybeMap(
          notAuthorized: (notAuthorized) => Future.value(),
          loading: (loading) => Future.value(),
          orElse: () async {
            try {
              value = authenticated.copyWith(
                admin: const AdminState.loading(),
              );
              final keys = await authenticated.client.adminAccessKeys();

              value = authenticated.copyWith(
                admin: keys.isEmpty
                    ? const AdminState.empty()
                    : AdminState.result(
                        accessKeys: keys,
                      ),
              );
            } catch (e, stackTrace) {
              value = authenticated.copyWith(
                admin: AdminState.failed(
                  error: e,
                  stackTrace: stackTrace,
                ),
              );
            }
          },
        );
      },
      orElse: () => Future.value(),
    );
  }

  Future<MicropubAccessKey?> createAccessKey(
    String email,
    bool read,
    bool write,
    bool admin,
  ) {
    return value.maybeMap(
      authenticated: (authenticated) {
        return authenticated.admin.maybeMap(
          notAuthorized: (notAuthorized) => throw Exception(),
          loading: (loading) => throw Exception(),
          orElse: () async {
            return await authenticated.client.adminCreateAccessKey(
              email,
              read,
              write,
              admin,
            );
          },
        );
      },
      orElse: () => throw Exception(),
    );
  }

  Future<void> revokeAccessKey(MicropubAccessKey key) {
    return value.maybeMap(
      authenticated: (authenticated) {
        return authenticated.admin.maybeMap(
          notAuthorized: (notAuthorized) => throw Exception(),
          loading: (loading) => throw Exception(),
          orElse: () async {
            return await authenticated.client.adminRevokeAccessKey(key.id);
          },
        );
      },
      orElse: () => throw Exception(),
    );
  }

  Future<void> disconnect() async {
    value = const AppState.notAuthenticated();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access-key');
  }

  Future<void> loadPackages(int page, String query) {
    return value.maybeMap(
      authenticated: (authenticated) async {
        authenticated.packages.maybeMap(
          result: (result) async {
            if (result.query != query ||
                (page >= 0 && page < result.totalPages)) {
              value = authenticated.copyWith(
                packages: PackagesState.loading(
                  page: page,
                  query: query,
                  pageSize: authenticated.packages.pageSize,
                ),
              );
              value = authenticated.copyWith(
                packages: await _loadPackages(
                  authenticated.client,
                  page,
                  authenticated.packages.pageSize,
                  query,
                ),
              );
            }
          },
          orElse: () async {
            value = authenticated.copyWith(
              packages: PackagesState.loading(
                page: page,
                query: query,
                pageSize: authenticated.packages.pageSize,
              ),
            );
            value = authenticated.copyWith(
              packages: await _loadPackages(
                authenticated.client,
                page,
                authenticated.packages.pageSize,
                query,
              ),
            );
          },
        );
      },
      orElse: () => Future.value(),
    );
  }

  Future<void> loadPackage(String name) {
    return value.maybeMap(
      authenticated: (authenticated) async {
        authenticated.package.maybeMap(
          notLoaded: (notLoaded) async {
            value = authenticated.copyWith(
              package: PackageState.loading(packageName: name),
            );
            value = authenticated.copyWith(
              package: await _loadPackage(
                authenticated.client,
                name,
              ),
            );
          },
          failed: (notLoaded) async {
            value = authenticated.copyWith(
              package: PackageState.loading(packageName: name),
            );
            value = authenticated.copyWith(
              package: await _loadPackage(
                authenticated.client,
                name,
              ),
            );
          },
          loading: (result) async {
            if (result.packageName != name) {
              value = authenticated.copyWith(
                package: PackageState.loading(packageName: name),
              );
              value = authenticated.copyWith(
                package: await _loadPackage(
                  authenticated.client,
                  name,
                ),
              );
            }
          },
          result: (result) async {
            if (result.packageName != name) {
              value = authenticated.copyWith(
                package: PackageState.loading(packageName: name),
              );
              value = authenticated.copyWith(
                package: await _loadPackage(
                  authenticated.client,
                  name,
                ),
              );
            }
          },
          orElse: () => Future.value(),
        );
      },
      orElse: () => Future.value(),
    );
  }

  Future<PackagesState> _loadPackages(
    MicropubApiClient client,
    int page,
    int pageSize,
    String query,
  ) async {
    try {
      final result = await client.getPackages(
        size: pageSize,
        page: page,
        query: query,
      );

      return PackagesState.result(
        pageSize: pageSize,
        page: page,
        query: query,
        result: result,
        totalPages: result.count ~/ pageSize,
      );
    } catch (e, stackTrace) {
      return PackagesState.failed(
        pageSize: pageSize,
        page: page,
        query: query,
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<PackageState> _loadPackage(
      MicropubApiClient client, String name) async {
    try {
      final result = await client.getPackageDetails(name);

      return PackageState.result(
        packageName: name,
        result: result,
      );
    } catch (e, stackTrace) {
      return PackageState.failed(
        packageName: name,
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
