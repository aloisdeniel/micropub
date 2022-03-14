import 'package:flutter/material.dart';
import 'package:website/theme/theme.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: TextStyle(color: theme.color.actionBarText1),
      child: Container(
        color: theme.color.actionBarBackground,
        child: Column(
          children: const [
            Text('Micropub'),
            Text('Private Dart package repository'),
            TextField(
              autocorrect: false,
            ),
            Text(
                'If you don\'t have one, please ask your administrator for one.'),
          ],
        ),
      ),
    );
  }
}
