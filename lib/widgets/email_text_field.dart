import 'package:chat_app/widgets/customized_text_field.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onSubmitted;

  const EmailTextField({
    super.key,
    required this.onChanged,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) => CustomizedTextField(
    hintText: 'Enter  your email',
    suffixIcon: Icons.email_rounded,
    keyboardType: TextInputType.emailAddress,
    onChanged: onChanged,
    onSubmitted: onSubmitted,
  );
}