import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/circle_button.dart';

class RemoveAddCard extends StatelessWidget {
  const RemoveAddCard({
    Key? key,
    required this.text,
    required this.maani,
    required this.onPressedRemove,
    required this.onPressedAdd,
  }) : super(key: key);
  final String text;
  final int maani;
  final void Function()? onPressedRemove;
  final void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF010120),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 26,
                color: Color(0xFFCECCD2),
              ),
            ),
            Text(
              '${maani}',
              style: const TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Circlebutton(
                  icon: Icons.remove,
                  onPressed: onPressedRemove,
                ),
                Circlebutton(icon: Icons.add, onPressed: onPressedAdd),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
