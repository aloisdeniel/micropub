import 'package:flutter/widgets.dart';
import 'package:micropub/client.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';
import 'package:website/widgets/sliver_markdown.dart';

class ReadmeTab extends StatelessWidget {
  const ReadmeTab({
    Key? key,
    required this.package,
  }) : super(
          key: key,
        );

  final MicropubPackageDetails package;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return SliverStack(
      children: <Widget>[
        SliverPositioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: theme.color.bodyBackground,
            ),
          ),
        ),
        SliverMarkdown(
          data: package.package.versions.first.readme ?? 'No readme',
          padding: EdgeInsets.all(theme.spacing.small).copyWith(
            bottom: theme.spacing.extraBig,
          ),
          itemBuilder: (context, child) => ContentEntry(
            child: child,
          ),
        ),
      ],
    );
  }
}
