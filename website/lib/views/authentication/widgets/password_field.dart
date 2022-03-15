import 'package:flutter/material.dart';
import 'package:website/theme/theme.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    required this.initial,
    required this.onChanged,
  }) : super(key: key);

  final String initial;
  final ValueChanged<String> onChanged;

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
          onChanged: (value) {
            widget.onChanged(value);
          },
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
            ),
          ),
          autocorrect: false,
          obscureText: true,
        ),
      ),
    );
  }
}
