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
        children: const [
          Stack(
            children: [
              Row(
                children: [
                  PianoWhiteButton(text: 'F1', nota: 'do.wav'),
                  PianoWhiteButton(text: 'F2', nota: 're.wav'),
                  PianoWhiteButton(text: 'F3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'F4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'F5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'F6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'F7', nota: 'si.wav'),
                  PianoWhiteButton(text: 'F1', nota: 'do2.wav'),
                  PianoWhiteButton(text: 'F2', nota: 're.wav'),
                  PianoWhiteButton(text: 'F3', nota: 'mi.wav'),
                  PianoWhiteButton(text: 'F4', nota: 'fa.wav'),
                  PianoWhiteButton(text: 'F5', nota: 'sol.wav'),
                  PianoWhiteButton(text: 'F6', nota: 'lya.wav'),
                  PianoWhiteButton(text: 'F7', nota: 'si.wav'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 42,
                  ),
                  PianoBlackButton(
                    text: 'F1',
                    leftMargin: 10,
                    nota: 'note1.wav',
                  ),
                  PianoBlackButton(
                    text: 'F2',
                    leftMargin: 25,
                    nota: 'note2.wav',
                  ),
                  PianoBlackButton(
                    text: 'F3',
                    visible: false,
                    nota: 'note3.wav',
                  ),
                  PianoBlackButton(
                    text: 'F4',
                    leftMargin: 48,
                    nota: 'note4.wav',
                  ),
                  PianoBlackButton(
                    text: 'F5',
                    leftMargin: 24,
                    nota: 'note5.wav',
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 24,
                    nota: 'note6.wav',
                  ),
                  PianoBlackButton(
                    text: 'F1',
                    leftMargin: 10,
                    visible: false,
                    nota: 'note7.wav',
                  ),
                  PianoBlackButton(
                    text: 'F2',
                    leftMargin: 40,
                    nota: 'note1.wav',
                  ),
                  PianoBlackButton(
                    text: 'F3',
                    leftMargin: 20,
                    nota: 'note2.wav',
                  ),
                  PianoBlackButton(
                    text: 'F4',
                    leftMargin: 20,
                    visible: false,
                    nota: 'note3.wav',
                  ),
                  PianoBlackButton(
                    text: 'F5',
                    leftMargin: 30,
                    nota: 'note4.wav',
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 30,
                    nota: 'note5.wav',
                  ),
                  PianoBlackButton(
                    text: 'F6',
                    leftMargin: 19,
                    nota: 'note6.wav',
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
