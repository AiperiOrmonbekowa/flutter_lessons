import 'dart:math';
import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Dice App',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const HomePageBody1(),
    );
  }
}

class HomePageBody1 extends StatefulWidget {
  const HomePageBody1({
    super.key,
  });

  @override
  State<HomePageBody1> createState() => _HomePageBody1State();
}

class _HomePageBody1State extends State<HomePageBody1> {
  int firstDiceIndex = 1;
  int secondDiceIndex = 6;

  Random random = Random();

  void changeDice() {
    firstDiceIndex = random.nextInt(6) + 1;
    secondDiceIndex = random.nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                changeDice();
              },
              child: Image.asset('assets/icons/dice$firstDiceIndex.png'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                changeDice();
              },
              child: Image.asset('assets/icons/dice$secondDiceIndex.png'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
