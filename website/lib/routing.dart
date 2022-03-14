import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:website/state/notifier.dart';
import 'package:website/views/packages/packages.dart';

import 'views/authentication/authentication.dart';

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
        builder: (BuildContext context, GoRouterState state) =>
            const PackagesView(),
      ),
      GoRoute(
        path: '/auth',
        builder: (BuildContext context, GoRouterState state) =>
            const AuthenticationView(),
      ),
    ],
    redirect: (state) {
      // redirect to the login page if the user is not logged in
      final loggedIn = widget.notifier.value.maybeMap(
        authenticated: (_) => true,
        orElse: () => false,
      );
      final loggingIn = state.subloc == '/auth';
      if (!loggedIn) return loggingIn ? null : '/auth';
      if (loggingIn) return '/';

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
