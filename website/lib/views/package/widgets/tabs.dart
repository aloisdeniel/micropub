import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_builder/tap_builder.dart';
import 'package:website/theme/theme.dart';

class PackageTabs extends StatelessWidget {
  const PackageTabs({
    Key? key,
    required this.selectedIndex,
    required this.onSelectedIndexChanged,
    required this.tabs,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onSelectedIndexChanged;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      width: double.infinity,
      color: theme.color.tabsBackground,
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.regular,
      ),
      child: Wrap(
        spacing: theme.spacing.regular,
        children: [
          ...tabs.asMap().entries.map(
                (e) => PackageTab(
                  index: e.key,
                  title: e.value,
                  isSelected: e.key == selectedIndex,
                  onSelected: () => onSelectedIndexChanged(e.key),
                ),
              )
        ],
      ),
    );
  }
}

class PackageTab extends StatelessWidget {
  const PackageTab({
    Key? key,
    required this.index,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final String title;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return TapBuilder(
      onTap: isSelected ? null : onSelected,
      builder: (BuildContext context, TapState state, bool isFocused) {
        final foreground = () {
          if (isSelected) return theme.color.tabsSelectedForeground;
          switch (state) {
            case TapState.pressed:
              return theme.color.tabsSelectedForeground;
            default:
              return theme.color.tabsForeground;
          }
        }();
        final barColor = () {
          if (isSelected) return theme.color.tabsSelectedForeground;
          switch (state) {
            case TapState.pressed:
            case TapState.hover:
              return theme.color.tabsHoverForeground;
            default:
              return Colors.transparent;
          }
        }();
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: barColor,
                width: 2,
              ),
            ),
          ),
          padding: EdgeInsets.all(theme.spacing.small),
          child: Text(
            title,
            style: theme.typography.paragraph1.copyWith(
              color: foreground,
            ),
          ),
        );
      },
    );
  }
}
