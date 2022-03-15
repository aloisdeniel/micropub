import 'package:flutter/material.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:website/theme/theme.dart';

class PageSelector extends StatelessWidget {
  const PageSelector({
    Key? key,
    required this.selected,
    required this.onSelectedChanged,
    required this.total,
  }) : super(key: key);

  final int selected;
  final ValueChanged<int> onSelectedChanged;
  final int total;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.color.tabsBackground,
        borderRadius: BorderRadius.all(theme.radius.regular),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          for (var i = 0; i < total; i++)
            PageItem(
              index: i,
              isSelected: i == selected,
              onSelected: () => onSelectedChanged(i),
            ),
        ],
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  const PageItem({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return TapBuilder(
      onTap: isSelected ? null : onSelected,
      builder: (BuildContext context, TapState state, bool isFocused) {
        final foreground = () {
          if (isSelected) return theme.color.heroBarText1;
          switch (state) {
            case TapState.pressed:
            case TapState.hover:
              return theme.color.tabsSelectedForeground;
            default:
              return theme.color.tabsForeground;
          }
        }();
        final background = () {
          if (isSelected) return theme.color.tabsSelectedForeground;
          switch (state) {
            case TapState.pressed:
            case TapState.hover:
              return theme.color.tabsSelectedForeground.withOpacity(0.08);
            default:
              return Colors.transparent;
          }
        }();
        return Container(
          padding: EdgeInsets.all(theme.spacing.small),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.all(theme.radius.regular),
          ),
          child: Text(
            (index + 1).toString(),
            style: theme.typography.paragraph3.copyWith(
              color: foreground,
            ),
          ),
        );
      },
    );
  }
}
