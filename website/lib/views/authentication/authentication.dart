import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/widgets/flat_button.dart';
import 'package:website/widgets/text_button.dart';

import 'widgets/password_field.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  var accessKey = '';
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: TextStyle(color: theme.color.heroBarText1),
      child: Container(
        color: theme.color.heroBarBackground,
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
          child: Padding(
            padding: EdgeInsets.all(theme.spacing.extraBig),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'micro',
                      style: theme.typography.title1.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'pub',
                      style: theme.typography.title1,
                    ),
                  ],
                ),
                Text(
                  'Private Dart package repository',
                  style: theme.typography.paragraph2.copyWith(
                    color: theme.color.heroBarText2,
                  ),
                ),
                Gap(theme.spacing.extraBig),
                Row(
                  children: [
                    Expanded(
                      child: PasswordField(
                        initial: accessKey,
                        onChanged: (v) => setState(() {
                          accessKey = v;
                        }),
                      ),
                    ),
                    Gap(theme.spacing.regular),
                    AppFlatButton(
                      title: 'Access',
                      onTap: accessKey.trim().isEmpty
                          ? null
                          : () {
                              final notifier = AppStateNotifier.of(context);
                              notifier.authenticate(accessKey.trim());
                            },
                      style: theme.typography.paragraph1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Gap(theme.spacing.big),
                Text(
                  'If you don\'t have an access key, request one from your administrator',
                  style: theme.typography.paragraph2,
                ),
                Gap(theme.spacing.extraBig),
                AppTextButton(
                  title: 'Learn more on micropub from Github',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
