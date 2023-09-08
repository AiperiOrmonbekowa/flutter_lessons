// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    Key? key,
    required this.text,
    this.visible = true,
    this.leftMargin = 0,
    required this.nota,
  }) : super(key: key);

  final String text;
  final bool visible;
  final double leftMargin;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftMargin),
      child: SizedBox(
        height: 130,
        width: 60,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              fixedSize: const Size(60, 130),
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource('audios/$nota'),
              );
            },
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
