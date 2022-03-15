import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/state/notifier.dart';
import 'package:website/theme/theme.dart';

class PackagesSearchBar extends StatelessWidget {
  const PackagesSearchBar({
    Key? key,
    required this.initialQuery,
  }) : super(key: key);

  final String initialQuery;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DefaultTextStyle(
      style: theme.typography.title3.copyWith(
        color: theme.color.heroBarText1,
      ),
      child: Container(
        color: theme.color.heroBarBackground,
        padding: EdgeInsets.all(theme.spacing.big),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: theme.size.maxWidth),
            child: _SearchField(
              initial: initialQuery,
              onValidate: (v) {
                context.read<AppStateNotifier>().loadPackages(0, v);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchField extends StatefulWidget {
  const _SearchField({
    Key? key,
    required this.initial,
    required this.onValidate,
  }) : super(key: key);

  final String initial;
  final ValueChanged<String> onValidate;

  @override
  State<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<_SearchField> {
  late final controller = TextEditingController(
    text: widget.initial,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.color.heroBarFieldBackground,
        borderRadius: const BorderRadius.all(
          Radius.circular(300),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: TextField(
          onSubmitted: (v) {
            widget.onValidate(v);
          },
          controller: controller,
          style: theme.typography.paragraph1.copyWith(
            color: theme.color.heroBarFieldText1,
          ),
          decoration: InputDecoration(
            hintText: 'Search packages',
            hintStyle: theme.typography.paragraph1.copyWith(
              color: theme.color.heroBarFieldPlaceholder,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(300),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(300),
              ),
              borderSide: BorderSide(
                color: theme.color.heroBarFieldPlaceholder,
                width: 1,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: theme.spacing.regular,
            ),
          ),
          autocorrect: false,
        ),
      ),
    );
  }
}
