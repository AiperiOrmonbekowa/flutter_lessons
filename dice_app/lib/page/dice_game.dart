import 'dart:math';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int clientFirstIndex = 1;
  int clientSecondIndex = 1;
  int clientSum = 0;

  void clientAction() {
    clientFirstIndex = random.nextInt(6) + 1;
    clientSecondIndex = random.nextInt(6) + 1;
    clientSum = clientSum + clientFirstIndex + clientSecondIndex;
    setState(() {});
    result();
    if (clientSum < 50) {
      manageApplication();
    }
  }

  int appFirstIndex = 1;
  int appSecondIndex = 1;
  int appSum = 0;

  void manageApplication() {
    showDialog(
      context: context,
      builder: (contex) {
        return const AlertDialog(content: CircularProgressIndicator());
      },
    );

    Future.delayed(
      const Duration(seconds: 1),
    ).whenComplete(
      () {
        Navigator.pop(context);
        appAction();
      },
    );
  }

  void appAction() {
    appFirstIndex = random.nextInt(6) + 1;
    appSecondIndex = random.nextInt(6) + 1;
    appSum = appSum + appFirstIndex + appSecondIndex;
    setState(() {});
    result();
  }

  Random random = Random();
  void result() {
    if (clientSum >= 50) {
      showDialog(
        barrierColor: Colors.pinkAccent,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Ой азамат кыйынсынго! 🤗'),
            actions: [
              TextButton(
                onPressed: () {
                  resetAll();
                },
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    } else if (appSum >= 50) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:
                const Text('Апей женилип калдынго 🙁 \n Кел кайра ойнойбуз :)'),
            actions: [
              TextButton(
                onPressed: () {
                  resetAll();
                },
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
      return;
    }
  }

  void resetAll() {
    clientFirstIndex = 1;
    clientSecondIndex = 2;
    clientSum = 0;

    appFirstIndex = 1;
    appSecondIndex = 1;
    appSum = 0;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You: $clientSum',
            style: const TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    clientAction();
                  },
                  child: Image.asset('assets/icons/dice$clientFirstIndex.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    clientAction();
                  },
                  child: Image.asset('assets/icons/dice$clientSecondIndex.png'),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Image.asset('assets/icons/dice$appFirstIndex.png'),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Image.asset('assets/icons/dice$appSecondIndex.png'),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          Text(
            'App: $appSum',
            style: const TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
