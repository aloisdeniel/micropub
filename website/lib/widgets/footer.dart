import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';

import 'text_button.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final appState = context.watch<AppStateNotifier>().value;
    return DefaultTextStyle(
      style: theme.typography.title3.copyWith(
        color: theme.color.barBarText1,
      ),
      child: Container(
        color: theme.color.barBarBackground,
        padding: EdgeInsets.all(theme.spacing.regular),
        child: Center(
          child: AppTextButton(
            title: 'Learn more on micropub from Github',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
