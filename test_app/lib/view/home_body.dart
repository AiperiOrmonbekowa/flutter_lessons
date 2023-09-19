import 'package:flutter/material.dart';
import 'package:test_app/components/custom_button.dart';
import 'package:test_app/components/question_text.dart';
import 'package:test_app/constants/suroo.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List suroolor = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];
  int index = 0;
  void incrementindex() {
    if (index < 9) {
      index++;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 2,
        ),
        QuestionText(text: suroolor[index].text),
        const Spacer(),
        CustomButton(
          color: Colors.green,
          text: 'Туура',
          baskanda: () {
            incrementindex();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          color: Colors.red,
          text: 'Туура эмес',
          baskanda: () {
            incrementindex();
          },
        ),
        const Spacer(
          flex: 3,
        ),
        const Row(
          children: [
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
