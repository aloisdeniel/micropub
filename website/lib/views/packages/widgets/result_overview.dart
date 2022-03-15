import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:website/theme/theme.dart';

class PackagesResultOverview extends StatelessWidget {
  const PackagesResultOverview({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.color.bodyBackground,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: theme.spacing.big,
              vertical: theme.spacing.regular,
            ),
            child: Row(
              children: [
                Text(
                  'RESULTS',
                  style: theme.typography.paragraph3,
                ),
                const Gap(4),
                Container(
                  color: theme.color.bodyText1.withOpacity(0.1),
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 4,
                  ),
                  child: Text(
                    '$count',
                    style: theme.typography.paragraph3,
                  ),
                ),
                const Gap(4),
                Text(
                  'package${count > 1 ? 's' : ''}',
                  style: theme.typography.paragraph3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
