import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';
import 'package:website/widgets/text_button.dart';

class AppActionBar extends StatelessWidget {
  const AppActionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final appState = context.watch<AppStateNotifier>().value;
    final isAdmin = appState.maybeMap(
      authenticated: (authenticated) => authenticated.admin.maybeMap(
        notAuthorized: (_) => false,
        orElse: () => true,
      ),
      orElse: () => false,
    );
    return DefaultTextStyle(
      style: theme.typography.title3.copyWith(
        color: theme.color.barBarText1,
      ),
      child: Container(
        color: theme.color.barBarBackground,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            const _Logo(),
            Positioned.fill(
              child: Center(
                child: Text(
                  appState.maybeMap(
                    authenticated: (authenticated) =>
                        'Welcome ${authenticated.me.email}!',
                    orElse: () => '',
                  ),
                  style: theme.typography.paragraph2.copyWith(
                    color: theme.color.heroBarFieldPlaceholder,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isAdmin) ...[
                    AppTextButton(
                      title: 'Admin',
                      onTap: () {
                        context.go('/admin');
                      },
                    ),
                    Gap(theme.spacing.regular),
                  ],
                  AppTextButton(
                    title: 'Disconnect',
                    onTap: () {
                      final notifier = AppStateNotifier.of(context);
                      notifier.disconnect();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return TapBuilder(
      onTap: () => context.go('/'),
      builder: (context, state, isFocus) {
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
          color: theme.color.barBarText1.withOpacity(opacity),
          padding: EdgeInsets.all(theme.spacing.regular),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'micro',
                style: theme.typography.title3.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'pub',
                style: theme.typography.title3,
              ),
            ],
          ),
        );
      },
    );
  }
}
