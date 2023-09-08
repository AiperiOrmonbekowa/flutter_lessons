import 'package:flutter/widgets.dart';
import 'package:piano_app/components/black_button.dart';
import 'package:piano_app/components/white_button.dart';

class PianoKeyWord extends StatelessWidget {
  const PianoKeyWord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Row(
                children: [
                  PianoWhiteButton(text: 'F1'),
                  PianoWhiteButton(text: 'F2'),
                  PianoWhiteButton(text: 'F3'),
                  PianoWhiteButton(text: 'F4'),
                  PianoWhiteButton(text: 'F5'),
                  PianoWhiteButton(text: 'F6'),
                  PianoWhiteButton(text: 'F7'),
                  PianoWhiteButton(text: 'F1'),
                  PianoWhiteButton(text: 'F2'),
                  PianoWhiteButton(text: 'F3'),
                  PianoWhiteButton(text: 'F4'),
                  PianoWhiteButton(text: 'F5'),
                  PianoWhiteButton(text: 'F6'),
                  PianoWhiteButton(text: 'F7'),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 42,
                  ),
                  PianoBlackButton(
                    text: 'F1',
                    leftMargin: 10,
                  ),
                  PianoBlackButton(
                    text: 'F2',
                    leftMargin: 25,
                  ),
                  PianoBlackButton(
                    text: 'F3',
                    visible: false,
                  ),
                  PianoBlackButton(
                    text: 'F4',
                    leftMargin: 48,
                  ),
                  PianoBlackButton(
                    text: 'F5',
                    leftMargin: 24,
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 24,
                  ),
                  PianoBlackButton(
                    text: 'F1',
                    leftMargin: 10,
                    visible: false,
                  ),
                  PianoBlackButton(
                    text: 'F2',
                    leftMargin: 40,
                  ),
                  PianoBlackButton(
                    text: 'F3',
                    leftMargin: 20,
                  ),
                  PianoBlackButton(
                    text: 'F4',
                    leftMargin: 20,
                    visible: false,
                  ),
                  PianoBlackButton(
                    text: 'F5',
                    leftMargin: 30,
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 30,
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 19,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
