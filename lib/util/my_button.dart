import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromARGB(255, 255, 230, 1),
      child: Text(text),
    );
  }
}
