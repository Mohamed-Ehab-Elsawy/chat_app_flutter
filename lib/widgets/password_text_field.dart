import 'package:flutter/material.dart';

import 'customized_text_field.dart';

class PasswordTextField extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onSubmitted;

  const PasswordTextField({
    super.key,
    required this.onChanged,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) => CustomizedTextField(
    hintText: 'Enter your password',
    suffixIcon: Icons.password_rounded,
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    onChanged: onChanged,
    onSubmitted: onSubmitted,
  );
}