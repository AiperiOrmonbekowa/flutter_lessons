// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.maxFinite, 60),
          textStyle: Theme.of(context).textTheme.headlineMedium),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
