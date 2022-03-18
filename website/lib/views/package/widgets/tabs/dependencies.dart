import 'package:flutter/widgets.dart';
import 'package:micropub/client.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';

class DependenciesTab extends StatelessWidget {
  const DependenciesTab({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackageDetails package;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final dependencies = package.package.versions.last.pubspec['depdencies']
            as Map<String, dynamic>? ??
        const <String, dynamic>{};
    return SliverList(
      delegate: SliverChildListDelegate([
        if (dependencies.isEmpty)
          ContentEntry(
            child: Text(
              'No dependencies',
              style: theme.typography.paragraph2,
            ),
          ),
        ...dependencies.entries.map(
          (e) => DependencyTile(
            name: e.key,
            value: e.value,
          ),
        ),
        ContentEntry(
          child: SizedBox(
            height: theme.spacing.extraBig,
          ),
        ),
      ]),
    );
  }
}

class DependencyTile extends StatelessWidget {
  const DependencyTile({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ContentEntry(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(theme.spacing.small),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: theme.typography.paragraph1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: theme.color.bodyText1.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
