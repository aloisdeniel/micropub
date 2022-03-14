import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routing.dart';
import 'state/notifier.dart';
import 'theme/theme.dart';

class MicropubWebsite extends StatelessWidget {
  const MicropubWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      child: ChangeNotifierProvider(
        create: (context) => AppStateNotifier(),
        child: Builder(builder: (context) {
          return AppRouting(
            notifier: context.watch<AppStateNotifier>(),
            builder: (context, routerDelegate, routeInformationParser) {
              return MaterialApp.router(
                title: 'Micropub',
                routeInformationParser: routeInformationParser,
                routerDelegate: routerDelegate,
              );
            },
          );
        }),
      ),
    );
  }
}
