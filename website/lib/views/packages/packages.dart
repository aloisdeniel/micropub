import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/services/model.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';
import 'package:website/views/packages/widgets/action_bar.dart';
import 'package:website/widgets/footer.dart';

import 'widgets/package_tile.dart';
import 'widgets/page_selector.dart';
import 'widgets/result_overview.dart';
import 'widgets/search_bar.dart';

class PackagesView extends StatelessWidget {
  const PackagesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppStateNotifier>().value;
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: theme.typography.paragraph2.copyWith(
        color: theme.color.bodyText1,
      ),
      child: appState.map(
        initializing: (initializing) => const _Loading(),
        notAuthenticated: (notAuthenticated) => const _Failed(
          description: 'Not authenticated',
        ),
        authenticationFailed: (authenticationFailed) => const _Failed(
          description: 'Not authenticated',
        ),
        authenticating: (authenticating) => const _Loading(),
        authenticated: (authenticated) => authenticated.packages.map(
          notLoaded: (notLoaded) => const _NotLoaded(),
          empty: (empty) => _Empty(query: empty.query),
          loading: (loading) => const _Loading(),
          failed: (failed) => _Failed(
            description: 'Loading failed\n${failed.error}',
          ),
          result: (result) {
            if (result.result.count == 0) return _Empty(query: result.query);
            return _Results(
              result: result.result,
              pageSize: authenticated.packages.pageSize,
              page: authenticated.packages.page,
              query: authenticated.packages.query,
            );
          },
        ),
      ),
    );
  }
}

class _NotLoaded extends StatefulWidget {
  const _NotLoaded({
    Key? key,
  }) : super(key: key);

  @override
  State<_NotLoaded> createState() => _NotLoadedState();
}

class _NotLoadedState extends State<_NotLoaded> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<AppStateNotifier>().loadPackages(0, '');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const _Loading();
  }
}

class _Failed extends StatelessWidget {
  const _Failed({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

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
              child: Text(
                description,
                style: theme.typography.title3,
              ),
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty({
    Key? key,
    required this.query,
  }) : super(key: key);

  final String query;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Material(
      color: theme.color.bodyBackground,
      child: Column(
        children: [
          const AppActionBar(),
          PackagesSearchBar(
            initialQuery: query,
          ),
          const Expanded(
            child: Center(
              child: Text('No packages'),
            ),
          ),
          const AppFooter(),
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
      color: theme.color.bodyBackground,
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

class _Results extends StatelessWidget {
  const _Results({
    Key? key,
    required this.page,
    required this.pageSize,
    required this.query,
    required this.result,
  }) : super(key: key);

  final MicropubQueryResult result;
  final int pageSize;
  final int page;
  final String query;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: theme.typography.paragraph2.copyWith(
        color: theme.color.bodyText1,
      ),
      child: Container(
        color: theme.color.barBarBackground,
        child: ListView(
          children: [
            const AppActionBar(),
            PackagesSearchBar(
              initialQuery: query,
            ),
            PackagesResultOverview(
              count: result.count,
            ),
            ...result.packages.map(
              (p) => PackageTile(
                package: p,
              ),
            ),
            ContentEntry(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: theme.spacing.regular,
                ),
                child: PageSelector(
                  selected: page,
                  total: (result.count / pageSize).ceil(),
                  onSelectedChanged: (i) {
                    context.read<AppStateNotifier>().loadPackages(i, query);
                  },
                ),
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
