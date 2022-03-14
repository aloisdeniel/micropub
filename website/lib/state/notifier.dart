import 'dart:async';

import 'package:flutter/material.dart';
import 'package:website/services/api.dart';
import 'package:website/state/state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateNotifier extends ValueNotifier<AppState> {
  AppStateNotifier() : super(const AppState.initializing()) {
    unawaited(initialize());
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
      final client = ApiClient(accessKey: accessKey);
      final me = await client.me();
      value = AppState.authenticated(
        me: me,
        client: client,
        packages: const PackagesState.notLoaded(
          page: -1,
          pageSize: 100,
        ),
      );

      await loadPackages(0);
    } catch (e) {
      value = const AppState.authenticationFailed();
    }
  }

  Future<void> logOut() async {
    value = const AppState.notAuthenticated();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access-key');
  }

  Future<void> loadPackages(int page) {
    return value.maybeMap(
      authenticated: (authenticated) async {
        authenticated.packages.maybeMap(
          notLoaded: (notLoaded) async {
            value = authenticated.copyWith(
              packages: await _loadPackages(
                authenticated.client,
                page,
                notLoaded.pageSize,
              ),
            );
          },
          result: (result) async {
            if (page > 0 && page < result.totalPages) {
              value = authenticated.copyWith(
                packages: await _loadPackages(
                  authenticated.client,
                  page,
                  result.pageSize,
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
      ApiClient client, int page, int pageSize) async {
    try {
      final result = await client.getPackages(
        size: pageSize,
        page: page,
      );

      return PackagesState.result(
        pageSize: pageSize,
        page: page,
        result: result,
        totalPages: result.count ~/ pageSize,
      );
    } catch (e) {
      return PackagesState.failed(
        pageSize: pageSize,
        page: page,
        error: e,
      );
    }
  }
}
