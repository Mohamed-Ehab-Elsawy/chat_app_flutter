import 'package:flutter/material.dart';

class CustomizedElevatedButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPressed;

  const CustomizedElevatedButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(color: Color(0xFF2B475E), fontSize: 18),
      ),
    ),
  );
}