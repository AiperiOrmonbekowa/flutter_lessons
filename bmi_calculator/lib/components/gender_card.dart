// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final bool isActive;
  final void Function()? onTap;

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
              color:
                  isActive ? const Color(0xFFFF1065) : const Color(0xFFCECCD2),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 26,
                color: isActive
                    ? const Color(0xFFFF1065)
                    : const Color(0xFFCECCD2),
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
