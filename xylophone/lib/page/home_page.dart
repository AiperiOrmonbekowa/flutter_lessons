import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'XYLOPHONE',
          style: TextStyle(
              fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ContainerWidgets(
            color: Colors.red,
            note: 'nota1',
          ),
          ContainerWidgets(
            color: Colors.green,
            note: 'nota2',
          ),
          ContainerWidgets(
            color: Colors.yellow,
            note: 'nota3',
          ),
          ContainerWidgets(
            color: Colors.blue,
            note: 'nota4',
          ),
          ContainerWidgets(
            color: Colors.pink,
            note: 'nota5',
          ),
          ContainerWidgets(
            color: Colors.purple,
            note: 'nota6',
          ),
          ContainerWidgets(
            color: Colors.greenAccent,
            note: 'nota7',
          ),
          ContainerWidgets(
            color: Colors.red,
            note: 'nota1',
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainerWidgets extends StatelessWidget {
  ContainerWidgets({super.key, required this.color, required this.note});
  final Color color;
  final String note;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        player.play(AssetSource('notes/$note.mp3'));
      },
      child: Container(
        height: 87.09,
        width: double.infinity,
        color: color,
      ),
    );
  }
}
