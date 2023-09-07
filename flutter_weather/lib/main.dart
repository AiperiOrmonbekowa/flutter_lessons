import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String smile = '🥵';
  int degree = 0;
  Color backgroundColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter List',
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Flutter List'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                smile,
                style: const TextStyle(fontSize: 100),
              ),
              Text(
                '$degree C',
                style: const TextStyle(fontSize: 100),
              ),
              TextButton(
                onPressed: () {
                  changeWeather();
                },
                child: const Text(
                  'Аба ырайын алмаштыр',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeWeather() {
    Random random = Random();
    setState(() {
      var result = random.nextInt(6);
      if (result == 0) {
        smile = '🥵';
        degree = nextInt1(min: 30, max: 50);
        backgroundColor = Colors.amber;
      } else if (result == 4) {
        smile = '🥶';
        degree = nextInt1(min: -10, max: -05);
        backgroundColor = Colors.red;
      } else if (result == 1) {
        smile = '🤩';
        degree = nextInt1(min: 15, max: 30);
        backgroundColor = Colors.green;
      } else if (result == 2) {
        smile = '🌧️';
        degree = nextInt1(min: 10, max: 15);
        backgroundColor = Colors.grey;
      } else if (result == 3) {
        smile = '😶‍🌫️';
        degree = nextInt1(min: 1, max: 10);
        backgroundColor = Colors.pink;
      } else if (result == 5) {
        smile = ' ❄️ ';
        degree = random.nextInt(-15) + 5;
        backgroundColor = Colors.blueGrey;
      }
    });
  }

  int nextInt1({required min, required max}) {
    return min + Random().nextInt(max - min);
  }
}




/**
 * 0)30 -50 hot 
 * 1)15 - 30 normal
 * 2)10 -15 rain
 * 3)01 -10 cool
 * 4)-05 - 01 cold
 * 5)-05 - 20 very cold
 */