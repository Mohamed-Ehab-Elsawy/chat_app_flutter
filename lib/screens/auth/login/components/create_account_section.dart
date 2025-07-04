import 'package:flutter/material.dart';

class CreateAccountSection extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateAccountSection({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'don\'t have an account?',
        style: TextStyle(color: Colors.white),
      ),
      TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: EdgeInsets.zero,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        child: const Text('Sign up'),
      ),
    ],
  );
}