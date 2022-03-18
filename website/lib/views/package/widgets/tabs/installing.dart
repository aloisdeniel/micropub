import 'package:flutter/widgets.dart';
import 'package:micropub/client.dart';
import 'package:provider/provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/package/widgets/content_entry.dart';
import 'package:website/widgets/sliver_markdown.dart';

class InstallingTab extends StatelessWidget {
  const InstallingTab({
    Key? key,
    required this.package,
  }) : super(
          key: key,
        );

  final MicropubPackageDetails package;

  String buildMarkdown(BuildContext context) {
    final distantHostUrl = context.select(
      (AppStateNotifier value) => value.value.map(
        initializing: (x) => null,
        initializationFailed: (x) => null,
        initialized: (x) => x.info.distantHostUrl,
        authenticated: (x) => x.info.distantHostUrl,
        authenticating: (x) => x.info.distantHostUrl,
        authenticationFailed: (x) => x.info.distantHostUrl,
        notAuthenticated: (x) => x.info.distantHostUrl,
      ),
    );
    return '''
## Use this package as a library

Add an entry like this to your package's `pubspec.yaml` (and run an implicit `dart pub get`):

```yaml
dependencies:
  ${package.package.name}:
    hosted: $distantHostUrl
    version: ^${package.package.versions.first.version}
```

> Make sure to point to the micropub host.
''';
  }

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
          data: buildMarkdown(context),
          padding: EdgeInsets.all(theme.spacing.small).copyWith(
            bottom: theme.spacing.extraBig,
          ),
          itemBuilder: (context, child) => ContentEntry(
            child: child,
          ),
        )
      ],
    );
  }
}
