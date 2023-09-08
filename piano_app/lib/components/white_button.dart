// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    Key? key,
    required this.text,
    required this.nota,
  }) : super(key: key);
  final String text;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          fixedSize: const Size(80, 270),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () async {
          final player = AudioPlayer();
          player.play(
            AssetSource('audios/$nota'),
          );
        },
        child: Column(
          children: [
            const Spacer(),
            Text(text),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
