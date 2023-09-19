import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.color,
    required this.text,
    required this.baskanda,
  }) : super(key: key);
  final Color color;
  final String text;
  final void Function()? baskanda;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: baskanda,
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(335, 65),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          foregroundColor: Colors.white,
          backgroundColor: color),
      child: Text(text),
    );
  }
}
