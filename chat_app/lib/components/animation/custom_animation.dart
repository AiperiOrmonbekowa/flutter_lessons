import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomAnimationText extends StatelessWidget {
  const CustomAnimationText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.displayMedium!,
      child: AnimatedTextKit(
        totalRepeatCount: 100,
        animatedTexts: [
          WavyAnimatedText(
            text,
          )
        ],
      ),
    );
  }
}
