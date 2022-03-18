import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/theme/theme.dart';

import 'text_button.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: theme.typography.title3.copyWith(
        color: theme.color.barBarText1,
      ),
      child: Container(
        color: theme.color.barBarBackground,
        padding: EdgeInsets.all(theme.spacing.regular),
        child: Center(
          child: AppTextButton(
            title: 'micropub from Github',
            onTap: () {
              launch('https://github.com/aloisdeniel/micropub');
            },
          ),
        ),
      ),
    );
  }
}
