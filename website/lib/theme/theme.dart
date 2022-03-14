import 'package:flutter/widgets.dart';

import 'data/data.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    Key? key,
    this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData? data;

  static const AppThemeData fallback = AppThemeData.fallback();

  static AppThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()?.data ??
        fallback;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
