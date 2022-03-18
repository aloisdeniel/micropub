import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:micropub/client.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';
import 'package:website/views/package/widgets/tabs/installing.dart';
import 'package:website/views/package/widgets/tabs/readme.dart';
import 'package:website/views/package/widgets/tabs/versions.dart';
import 'package:website/views/packages/widgets/action_bar.dart';
import 'package:website/widgets/footer.dart';

import 'widgets/header.dart';
import 'widgets/tabs.dart';
import 'widgets/tabs/dependencies.dart';

class PackageView extends StatefulWidget {
  const PackageView({
    Key? key,
    required this.packageName,
  }) : super(key: key);

  final String packageName;

  @override
  State<PackageView> createState() => _PackageViewState();
}

class _PackageViewState extends State<PackageView> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<AppStateNotifier>().loadPackage(widget.packageName);
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
        initializing: (initializing) => const _Loading(),
        initialized: (initialized) => const _Loading(),
        initializationFailed: (failed) => _Failed(
          description: 'Initialization failed\n${failed.error}',
        ),
        notAuthenticated: (notAuthenticated) => const _Failed(
          description: 'Not authenticated',
        ),
        authenticationFailed: (authenticationFailed) => const _Failed(
          description: 'Not authenticated',
        ),
        authenticating: (authenticating) => const _Loading(),
        authenticated: (authenticated) => authenticated.package.map(
          notLoaded: (notLoaded) => const _Loading(),
          loading: (loading) => const _Loading(),
          failed: (failed) => _Failed(
            description: 'Loading failed\n${failed.error}',
          ),
          result: (result) => _Results(package: result.result),
        ),
      ),
    );
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

class _Results extends StatefulWidget {
  const _Results({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackageDetails package;

  @override
  State<_Results> createState() => _ResultsState();
}

class _ResultsState extends State<_Results> {
  var selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.color.barBarBackground,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const AppActionBar(),
              PackageHeader(
                package: widget.package.package,
              ),
              ContentEntry(
                child: Padding(
                  padding: EdgeInsets.only(bottom: theme.spacing.regular),
                  child: PackageTabs(
                    selectedIndex: selectedTab,
                    onSelectedIndexChanged: (i) => setState(() {
                      selectedTab = i;
                    }),
                    tabs: const [
                      'Readme',
                      'Installing',
                      'Dependencies',
                      'Versions',
                    ],
                  ),
                ),
              ),
            ]),
          ),
          () {
            if (selectedTab == 0) {
              return ReadmeTab(
                package: widget.package,
              );
            }

            if (selectedTab == 1) {
              return InstallingTab(
                package: widget.package,
              );
            }

            if (selectedTab == 2) {
              return DependenciesTab(
                package: widget.package,
              );
            }

            if (selectedTab == 3) {
              return VersionsTab(
                package: widget.package,
              );
            }

            throw Exception();
          }(),
          const SliverToBoxAdapter(child: AppFooter()),
        ],
      ),
    );
  }
}
