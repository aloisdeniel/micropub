import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:website/state/notifier.dart';
import 'package:website/views/admin/admin.dart';
import 'package:website/views/packages/packages.dart';

import 'views/authentication/authentication.dart';
import 'views/package/package.dart';

typedef RoutingBuilder = Widget Function(
  BuildContext context,
  RouterDelegate<Object> routerDelegate,
  RouteInformationParser<Object> routeInformationParser,
);

class AppRouting extends StatefulWidget {
  const AppRouting({
    Key? key,
    required this.notifier,
    required this.builder,
  }) : super(key: key);

  final AppStateNotifier notifier;
  final RoutingBuilder builder;

  @override
  _AppRoutingState createState() => _AppRoutingState();
}

class _AppRoutingState extends State<AppRouting> {
  late final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const PackagesView(),
        ),
      ),
      GoRoute(
        path: '/packages/:name',
        pageBuilder: (context, state) {
          final packageName = state.params['name']!;
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: PackageView(
              packageName: packageName,
            ),
          );
        },
      ),
      GoRoute(
        path: '/admin',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const AdminView(),
        ),
      ),
      GoRoute(
        path: '/auth',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const AuthenticationView(),
        ),
      ),
    ],
    redirect: (state) {
      // redirect to the login page if the user is not logged in
      final loggedIn = widget.notifier.value.maybeMap(
        authenticated: (_) => true,
        orElse: () => false,
      );
      final loggingIn = state.subloc == '/auth';

      if (!loggedIn) {
        if (loggingIn) return null;

        final sourceUrl = Uri.encodeQueryComponent(state.subloc);
        return loggingIn ? null : '/auth?from=$sourceUrl';
      }
      if (loggingIn) {
        final from = state.queryParams['from'];
        return from != null ? Uri.decodeQueryComponent(from) : '/';
      }

      return null;
    },
    refreshListenable: widget.notifier,
  );

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      _router.routerDelegate,
      _router.routeInformationParser,
    );
  }
}
