import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:micropub/client.dart';
import 'package:website/theme/theme.dart';

import 'content_entry.dart';

class InstallingDoc extends StatelessWidget {
  const InstallingDoc({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackageDetails package;

  String buildMarkdown() {
    return '''
## Use this package as a library

Add an entry like this to your package's `pubspec.yaml` (and run an implicit `dart pub get`):

```yaml
dependencies:
  ${package.package.name}:
    hosted: https://mymicropubserver.com/ # indicate your own micropub address
    version: ^${package.package.versions.first.version}
```

> Make sure to point to the micropub host.
''';
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ContentEntry(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: theme.spacing.small,
          right: theme.spacing.small,
          top: theme.spacing.small,
          bottom: theme.spacing.extraBig,
        ),
        child: MarkdownBody(
          selectable: true,
          data: buildMarkdown(),
        ),
      ),
    );
  }
}
