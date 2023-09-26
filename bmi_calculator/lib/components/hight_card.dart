// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HightCard extends StatelessWidget {
  const HightCard({
    Key? key,
    required this.value,
    this.onChanged,
  }) : super(key: key);
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF010120),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HIGHT',
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFFCECCD2),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${value.toInt()}',
                  style: const TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'cm',
                  style:
                      TextStyle(fontSize: 22, color: Colors.white, height: 3),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                value: value,
                onChanged: onChanged,
                min: 30,
                max: 230,
                activeColor: Colors.white,
                thumbColor: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
