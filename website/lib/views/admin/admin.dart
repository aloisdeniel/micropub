import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:micropub/client.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/admin/widgets/access_key_tile.dart';
import 'package:website/views/admin/widgets/action_bar.dart';
import 'package:website/views/packages/widgets/action_bar.dart';
import 'package:website/widgets/flat_button.dart';
import 'package:website/widgets/footer.dart';

import 'widgets/create_key_dialog.dart';

class AdminView extends StatefulWidget {
  const AdminView({
    Key? key,
  }) : super(key: key);

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<AppStateNotifier>().refreshAdmin();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final appState = context.watch<AppStateNotifier>().value;
    return DefaultTextStyle(
      style: theme.typography.paragraph2.copyWith(
        color: theme.color.bodyText1,
      ),
      child: appState.map(
        initializing: (authenticating) => const _Loading(),
        initialized: (initialized) => const _Loading(),
        initializationFailed: (initializationFailed) => const _Failed(),
        notAuthenticated: (notAuthenticated) => const _NotAuthorized(),
        authenticationFailed: (authenticationFailed) => const _NotAuthorized(),
        authenticating: (authenticating) => const _Loading(),
        authenticated: (authenticated) => authenticated.admin.map(
          notAuthorized: (notAuthenticated) => const _NotAuthorized(),
          notLoaded: (notLoaded) => const _Loading(),
          loading: (loading) => const _Loading(),
          failed: (failed) => const _Failed(),
          empty: (empty) => const _Empty(),
          result: (result) => _Results(
            accessKeys: result.accessKeys,
          ),
        ),
      ),
    );
  }
}

class _NotAuthorized extends StatelessWidget {
  const _NotAuthorized({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.bodyBackground,
      child: Column(
        children: const [
          AppActionBar(),
          Expanded(
            child: Center(
              child: Text('Not authorized!'),
            ),
          ),
          AppFooter(),
        ],
      ),
    );
  }
}

class _Failed extends StatelessWidget {
  const _Failed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.bodyBackground,
      child: Column(
        children: const [
          AppActionBar(),
          Expanded(
            child: Center(
              child: Text('An error occured...'),
            ),
          ),
          AppFooter(),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.barBarBackground,
      child: Column(
        children: const [
          AppActionBar(),
          Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          AppFooter(),
        ],
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.bodyBackground,
      child: Column(
        children: [
          const AppActionBar(),
          Expanded(
            child: Center(
              child: AppFlatButton(
                title: 'Create a key',
                onTap: () => CreateAccessKeyDialog.show(context),
              ),
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({
    Key? key,
    required this.accessKeys,
  }) : super(key: key);

  final List<MicropubAccessKey> accessKeys;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.barBarBackground,
      child: ListView(
        children: [
          const AppActionBar(),
          AdminActionBar(
            count: accessKeys.length,
          ),
          ...accessKeys.map(
            (e) => AccessKeyTile(
              key: Key(e.key),
              accessKey: e,
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}
