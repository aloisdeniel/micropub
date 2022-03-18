import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:micropub/client.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'content_entry.dart';

class PackageHeader extends StatelessWidget {
  const PackageHeader({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackage package;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final lastVersion = package.versions.first;
    final createdAt = lastVersion.createdAt;
    return ContentEntry(
      child: Padding(
        padding: EdgeInsets.only(
          top: theme.spacing.extraBig,
          left: theme.spacing.small,
          right: theme.spacing.small,
          bottom: theme.spacing.regular,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${package.name} ${lastVersion.version}',
                  style: theme.typography.title2,
                ),
                CopyRefButton(
                  package: package,
                ),
              ],
            ),
            Wrap(
              children: [
                Text(
                  'Published',
                  style: theme.typography.paragraph2,
                ),
                if (createdAt != null) ...[
                  Text(
                    ' ${timeago.format(createdAt)}',
                    style: theme.typography.paragraph2,
                  ),
                ],
                if (lastVersion.uploader != null) ...[
                  Text(
                    ' by ',
                    style: theme.typography.paragraph2,
                  ),
                  Text(
                    '${lastVersion.uploader}',
                    style: theme.typography.paragraph2.copyWith(
                      color: theme.color.bodyAccentText1,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CopyRefButton extends StatefulWidget {
  const CopyRefButton({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackage package;

  @override
  State<CopyRefButton> createState() => _CopyRefButtonState();
}

class _CopyRefButtonState extends State<CopyRefButton> {
  var isLabelVisible = false;

  void _showLabel() async {
    Clipboard.setData(ClipboardData(text: buildRef()));
    setState(() {
      isLabelVisible = true;
    });
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      setState(() {
        isLabelVisible = false;
      });
    }
  }

  String buildRef() {
    final distantHostUrl = context
        .read<AppStateNotifier>()
        .value
        .map(
          initializing: (x) => null,
          initializationFailed: (x) => null,
          initialized: (x) => x.info,
          authenticated: (x) => x.info,
          authenticating: (x) => x.info,
          authenticationFailed: (x) => x.info,
          notAuthenticated: (x) => x.info,
        )
        ?.distantHostUrl;
    return '''
    ${widget.package.name}:
      hosted: $distantHostUrl
      version: ^${widget.package.versions.first.version}
'''
        .trim();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TapBuilder(
          onTap: _showLabel,
          builder: (BuildContext context, TapState state, bool isFocused) {
            final opacity = () {
              switch (state) {
                case TapState.pressed:
                  return 0.14;
                case TapState.hover:
                  return 0.08;
                default:
                  return 0.0;
              }
            }();
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              color: theme.color.bodyText1.withOpacity(opacity),
              padding: EdgeInsets.all(theme.spacing.small),
              child: Icon(
                Icons.copy,
                color: theme.color.bodyText1,
              ),
            );
          },
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isLabelVisible ? 1 : 0,
          child: Container(
            color: theme.color.bodyText1.withOpacity(0.08),
            padding: const EdgeInsets.all(4),
            child: Text(
              'Copied to clipboard: \n${buildRef()}',
              style: theme.typography.paragraph4,
            ),
          ),
        ),
      ],
    );
  }
}
