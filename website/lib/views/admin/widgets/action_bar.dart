import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:website/theme/theme.dart';
import 'package:website/widgets/flat_button.dart';

import 'create_key_dialog.dart';

class AdminActionBar extends StatelessWidget {
  const AdminActionBar({
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
                Container(
                  color: theme.color.bodyText1.withOpacity(0.1),
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 4,
                  ),
                  child: Text(
                    count.toString(),
                    style: theme.typography.paragraph3,
                  ),
                ),
                const Gap(4),
                Text(
                  'PRIVATE ACCESS KEY${count > 1 ? 'S' : ''}',
                  style: theme.typography.paragraph3,
                ),
                const Spacer(),
                AppFlatButton(
                  title: 'Create a new access key',
                  onTap: () => CreateAccessKeyDialog.show(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
