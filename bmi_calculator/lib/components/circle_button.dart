import 'package:flutter/material.dart';

class Circlebutton extends StatelessWidget {
  const Circlebutton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF5C5B5B),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(4),
      ),
      child: Row(
        children: [
          Center(
            child: Icon(
              icon,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
