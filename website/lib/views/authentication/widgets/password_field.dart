import 'package:flutter/material.dart';
import 'package:website/theme/theme.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    required this.initial,
    required this.onChanged,
    required this.onSubmitted,
  }) : super(key: key);

  final String initial;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmitted;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
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
        borderRadius: BorderRadius.all(theme.radius.regular),
      ),
      child: Material(
        color: Colors.transparent,
        child: TextField(
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          controller: controller,
          style: theme.typography.paragraph1.copyWith(
            color: theme.color.heroBarFieldText1,
          ),
          decoration: InputDecoration(
            hintText: 'Enter your access key',
            hintStyle: theme.typography.paragraph1.copyWith(
              color: theme.color.heroBarFieldPlaceholder,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.color.heroBarFieldPlaceholder,
                width: 1,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: theme.spacing.regular,
              vertical: theme.spacing.small,
            ),
          ),
          scrollPadding: EdgeInsets.symmetric(
            horizontal: theme.spacing.regular,
            vertical: theme.spacing.small,
          ),
          autocorrect: false,
          obscureText: true,
        ),
      ),
    );
  }
}
