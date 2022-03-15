import 'package:flutter/widgets.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:website/theme/theme.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.title,
    this.onTap,
    this.style,
    this.color,
    this.padding,
  }) : super(key: key);

  final Color? color;
  final TextStyle? style;
  final String title;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.color.bodyAccentText1;
    final style = this.style ?? theme.typography.paragraph2;
    final padding = this.padding ??
        EdgeInsets.symmetric(
          horizontal: theme.spacing.regular,
          vertical: theme.spacing.small,
        );
    return TapBuilder(
      onTap: onTap,
      builder: (BuildContext context, TapState state, bool isFocused) {
        final opacity = () {
          switch (state) {
            case TapState.pressed:
              return 0.2;
            case TapState.hover:
              return 0.1;
            default:
              return 0.0;
          }
        }();
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: color.withOpacity(opacity),
            borderRadius: BorderRadius.all(theme.radius.regular),
          ),
          padding: padding,
          child: Text(
            title,
            style: style.copyWith(
              color: color,
            ),
          ),
        );
      },
    );
  }
}
