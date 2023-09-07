import 'package:flutter/material.dart';
import 'package:piano_app/components/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Piano app',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(80, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('F1'),
                ),
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
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
