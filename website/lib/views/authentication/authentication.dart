import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/widgets/flat_button.dart';
import 'package:website/widgets/text_button.dart';

import 'widgets/password_field.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppStateNotifier>().value;

    return state.map(
      initializing: (initializing) => const _Loading(),
      initialized: (initialized) => const _Loading(),
      initializationFailed: (initializationFailed) => _Failed(
        message: 'Initialization failed\n${initializationFailed.error}',
      ),
      notAuthenticated: (notAuthenticated) => const _Success(),
      authenticationFailed: (authenticationFailed) => const _Success(),
      authenticating: (authenticating) => const _Loading(),
      authenticated: (authenticated) => const _Loading(),
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
    return DefaultTextStyle(
      style: TextStyle(color: theme.color.heroBarText1),
      child: Container(
        color: theme.color.heroBarBackground,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _Failed extends StatelessWidget {
  const _Failed({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: TextStyle(color: theme.color.heroBarText1),
      child: Container(
        color: theme.color.heroBarBackground,
        child: Center(
          child: Text(message),
        ),
      ),
    );
  }
}

class _Success extends StatefulWidget {
  const _Success({
    Key? key,
  }) : super(key: key);

  @override
  State<_Success> createState() => _SuccessState();
}

class _SuccessState extends State<_Success> {
  var accessKey = '';
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    Future<void> onSubmitted(String value) {
      final notifier = AppStateNotifier.of(context);
      return notifier.authenticate(accessKey.trim());
    }

    final adminEmail =
        context.select(((AppStateNotifier value) => value.value.map(
              initializing: (x) => null,
              initializationFailed: (x) => null,
              initialized: (x) => x.info.adminEmail,
              notAuthenticated: (x) => x.info.adminEmail,
              authenticationFailed: (x) => x.info.adminEmail,
              authenticating: (x) => x.info.adminEmail,
              authenticated: (x) => x.info.adminEmail,
            )));

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
                        onSubmitted: onSubmitted,
                      ),
                    ),
                    Gap(theme.spacing.regular),
                    AppFlatButton(
                      title: 'Access',
                      onTap: accessKey.trim().isEmpty
                          ? null
                          : () => onSubmitted(accessKey),
                      style: theme.typography.paragraph1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Gap(theme.spacing.big),
                RichText(
                  text: TextSpan(
                    style: theme.typography.paragraph2.copyWith(
                      color: theme.color.heroBarText1,
                    ),
                    children: [
                      const TextSpan(
                          text:
                              "If you don't have an access key, request one from "),
                      if (adminEmail == null)
                        const TextSpan(
                          text: "your administrator",
                        ),
                      if (adminEmail != null)
                        TextSpan(
                          text: "your administrator",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              launch(
                                  'mailto:${Uri.encodeQueryComponent(adminEmail)}');
                            },
                          style: TextStyle(
                            color: theme.color.bodyAccentText1,
                          ),
                        )
                    ],
                  ),
                ),
                Gap(theme.spacing.extraBig),
                AppTextButton(
                  title: 'micropub on Github',
                  onTap: () {
                    launch('https://github.com/aloisdeniel/micropub');
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
