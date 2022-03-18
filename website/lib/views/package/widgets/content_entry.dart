import 'package:flutter/widgets.dart';
import 'package:website/theme/theme.dart';

class ContentEntry extends StatelessWidget {
  const ContentEntry({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.color.bodyBackground,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
          child: SizedBox(
            width: double.infinity,
            child: child,
          ),
        ),
      ),
    );
  }
}
