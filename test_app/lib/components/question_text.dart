import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
