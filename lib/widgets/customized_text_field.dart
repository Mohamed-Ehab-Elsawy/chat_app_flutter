import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final IconData suffixIcon;
  final bool? obscureText;
  final TextInputType keyboardType;

  const CustomizedTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) => TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      suffixIcon: Icon(suffixIcon, color: Colors.white),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(16),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white),
    keyboardType: keyboardType,
    obscureText: obscureText ?? false,
    onChanged: onChanged ?? (value) {},
    onSubmitted: onSubmitted ?? (value) {},
  );
}