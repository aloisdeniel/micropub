import 'package:flutter/widgets.dart';
import 'package:micropub/client.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';
import 'package:timeago/timeago.dart' as timeago;

class VersionsTab extends StatelessWidget {
  const VersionsTab({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackageDetails package;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return SliverList(
      delegate: SliverChildListDelegate([
        ...package.package.versions.map(
          (e) => VersionTile(
            version: e,
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

class VersionTile extends StatelessWidget {
  const VersionTile({
    Key? key,
    required this.version,
  }) : super(key: key);

  final MicropubVersion version;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final date = version.createdAt;
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
                    version.version,
                    style: theme.typography.paragraph1,
                  ),
                ),
                if (date != null)
                  Text(
                    timeago.format(date),
                    style: theme.typography.paragraph2,
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
