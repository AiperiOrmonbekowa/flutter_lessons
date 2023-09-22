import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: const Color(0xFF010120),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 110,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 26,
                color: Color(0xFFCECCD2),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
