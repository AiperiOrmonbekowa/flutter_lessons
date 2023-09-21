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
  List<bool> jooptor = [];

  int index = 0;
  void incrementindex(bool joop) {
    if (jooptor.length <= 10) {
      final result = joop == suroolor[index].joop;
      jooptor.add(result);
    }
    if (index < 9) {
      index++;
    } else {
      // tapshyrma
      List<bool> kataJooptor = [];
      List<bool> tuuraJooptor = [];

      jooptor.map((e) => e == true ? tuuraJooptor.add(e) : null).toList();
      jooptor.map((e) => e == false ? kataJooptor.add(e) : null).toList();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Тест аягына чыкты'),
            content: Text(
                'tuura jooptor ${tuuraJooptor.length}, kata jooptor ${kataJooptor.length}'),
          );
        },
      );
    }
    setState(() {});
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
            incrementindex(true);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          color: Colors.red,
          text: 'Туура эмес',
          baskanda: () {
            incrementindex(false);
          },
        ),
        const Spacer(
          flex: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                children: jooptor
                    .map((e) => Icon(
                          e ? Icons.check : Icons.close,
                          color: e ? Colors.green : Colors.red,
                        ),
                        )
                    .toList()),
            IconButton(
              iconSize: 40,
              onPressed: () {
                index = 0;
                jooptor.clear();
                setState(() {});
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
