import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final void Function()? onTap;
  final String text;

  const Button({
    super.key,
    required this.onTap,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        decoration: const BoxDecoration(color: Colors.black),

        padding: const EdgeInsets.all(25),

        child: Center(
          
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),

        ),

      ),

    );
  }

}