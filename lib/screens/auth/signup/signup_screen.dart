import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widgets/customized_elevated_button.dart';
import '../../../widgets/email_text_field.dart';
import '../../../widgets/password_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: kPrimaryColor,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmailTextField(onChanged: (value) {}, onSubmitted: (value) {}),
          const SizedBox(height: 16),
          PasswordTextField(onChanged: (value) {}, onSubmitted: (value) {}),
          const SizedBox(height: 32),
          CustomizedElevatedButton(onPressed: () {}, buttonTitle: 'Sign up'),
        ],
      ),
    ),
  );
}