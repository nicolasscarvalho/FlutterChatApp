import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const TextInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: hintText
      ),
    );
  }
}