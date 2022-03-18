import 'package:flutter/widgets.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:website/theme/theme.dart';

class AppFlatButton extends StatelessWidget {
  const AppFlatButton({
    Key? key,
    required this.title,
    this.onTap,
    this.style,
    this.background,
    this.foreground,
    this.padding,
  }) : super(key: key);

  final Color? background;
  final Color? foreground;
  final TextStyle? style;
  final String title;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final background = this.background ?? theme.color.primaryButtonBackground;
    final foreground = this.foreground ?? theme.color.primaryButtonForeground;
    final style = this.style ?? theme.typography.paragraph2;
    final padding = this.padding ??
        EdgeInsets.symmetric(
          horizontal: theme.spacing.regular,
          vertical: theme.spacing.small,
        );
    return TapBuilder(
      onTap: onTap,
      builder: (BuildContext context, TapState state, bool isFocused) {
        final foregroundOpacity = () {
          switch (state) {
            case TapState.pressed:
              return 0.4;
            case TapState.hover:
              return 0.25;
            default:
              return 0.0;
          }
        }();

        final opacity = () {
          switch (state) {
            case TapState.disabled:
              return 0.30;
            default:
              return 1.0;
          }
        }();
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: opacity,
          child: Container(
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.all(theme.radius.regular),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              color: foreground.withOpacity(foregroundOpacity),
              padding: padding,
              child: Text(
                title,
                style: style.copyWith(
                  color: foreground,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
