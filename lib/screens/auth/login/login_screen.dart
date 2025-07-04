import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../widgets/customized_elevated_button.dart';
import '../../../widgets/email_text_field.dart';
import '../../../widgets/password_text_field.dart';
import 'components/app_logo_section.dart';
import 'components/create_account_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: kPrimaryColor,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          const AppLogoSection(),
          const SizedBox(height: 16),
          EmailTextField(onChanged: (value) {}, onSubmitted: (value) {}),
          const SizedBox(height: 16),
          PasswordTextField(onChanged: (value) {}, onSubmitted: (value) {}),
          const SizedBox(height: 32),
          CustomizedElevatedButton(onPressed: () {}, buttonTitle: 'Log in'),
          const SizedBox(height: 8),
          CreateAccountSection(
            onPressed: () {
              Navigator.pushNamed(context, MainScreens.signup.name);
            },
          ),
        ],
      ),
    ),
  );
}