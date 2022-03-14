import 'package:flutter/widgets.dart';
import 'package:website/theme/theme.dart';

class PackagesView extends StatelessWidget {
  const PackagesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.color.bodyBackground,
    );
  }
}
