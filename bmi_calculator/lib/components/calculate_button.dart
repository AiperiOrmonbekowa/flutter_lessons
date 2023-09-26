import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFF1065),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        shape: const RoundedRectangleBorder(),
        fixedSize: const Size(double.infinity, 63),
      ),
      child: Text(text),
    );
  }
}
