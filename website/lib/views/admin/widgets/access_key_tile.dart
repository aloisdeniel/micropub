import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:micropub/client.dart';
import 'package:website/theme/theme.dart';
import 'package:website/views/admin/widgets/revoke_key_dialog.dart';
import 'package:website/widgets/flat_button.dart';
import 'package:timeago/timeago.dart' as timeago;

class AccessKeyTile extends StatelessWidget {
  const AccessKeyTile({
    Key? key,
    required this.accessKey,
  }) : super(key: key);

  final MicropubAccessKey accessKey;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.color.bodyBackground,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
          child: Padding(
            padding: EdgeInsets.all(theme.spacing.big),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        accessKey.key,
                        style: theme.typography.title3,
                      ),
                      Gap(theme.spacing.small),
                      Text(
                        accessKey.email,
                        style: theme.typography.paragraph3,
                      ),
                      Gap(theme.spacing.small),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...accessKey.authorizations.map(
                            (e) => AuthorizationLabel(e),
                          ),
                        ],
                      ),
                      Gap(theme.spacing.small),
                      Text(
                        timeago.format(accessKey.creationDate),
                        style: theme.typography.paragraph3.copyWith(
                          color: theme.color.heroBarFieldPlaceholder,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (x) {
                    if (x == 'Revoke') {
                      RevokeKeyDialog.show(context, accessKey);
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return {'Revoke'}.map(
                      (String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      },
                    ).toList();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthorizationLabel extends StatelessWidget {
  AuthorizationLabel(
    this.value,
  ) : super(key: ValueKey(value));

  final MicropubAuthorization value;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(right: theme.spacing.small),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: () {
            switch (value) {
              case MicropubAuthorization.read:
                return theme.color.readAccent;
              case MicropubAuthorization.write:
                return theme.color.writeAccent;
              case MicropubAuthorization.admin:
                return theme.color.adminAccent;
            }
          }(),
        ),
        child: Text(
          () {
            switch (value) {
              case MicropubAuthorization.read:
                return 'DOWNLOAD';
              case MicropubAuthorization.write:
                return 'PUBLISH';
              case MicropubAuthorization.admin:
                return 'ADMIN';
            }
          }(),
          style: theme.typography.paragraph3.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
