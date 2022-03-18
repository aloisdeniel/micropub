import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:micropub/client.dart';
import 'package:website/theme/theme.dart';

class PackageTile extends StatelessWidget {
  const PackageTile({
    Key? key,
    required this.package,
  }) : super(key: key);

  final MicropubPackage package;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final version = package.versions.first;
    final description = version.pubspec['description'] as String?;
    final updatedAt = package.updatedAt;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.color.bodyBackground,
      ),
      child: Center(
        child: TapBuilder(
          onTap: () {
            context.go('/packages/${Uri.encodeComponent(package.name)}');
          },
          builder: (context, state, isFocused) {
            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
              child: Container(
                color: () {
                  switch (state) {
                    case TapState.hover:
                      return theme.color.bodyHoverBackground;
                    default:
                      return Colors.transparent;
                  }
                }(),
                padding: EdgeInsets.all(theme.spacing.big),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      package.name,
                      style: theme.typography.title3.copyWith(
                        color: theme.color.bodyAccentText1,
                      ),
                    ),
                    if (description != null) ...[
                      Gap(theme.spacing.small),
                      Text(
                        description,
                        style: theme.typography.paragraph2,
                      ),
                    ],
                    Gap(theme.spacing.small),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'v',
                          style: theme.typography.paragraph3,
                        ),
                        Text(
                          version.version,
                          style: theme.typography.paragraph3.copyWith(
                            color: theme.color.bodyAccentText1,
                          ),
                        ),
                        if (updatedAt != null) ...[
                          Gap(theme.spacing.small),
                          Text(
                            '(${timeago.format(updatedAt)})',
                            style: theme.typography.paragraph3.copyWith(
                              color: theme.color.heroBarFieldPlaceholder,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
