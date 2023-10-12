import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/remove_add_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/hight_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isMale = false;
  double hight = 180;
  double weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF211834),
      appBar: AppBar(
        backgroundColor: const Color(0xFF211834),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GenderCard(
                      icon: Icons.male,
                      text: 'MALE',
                      isActive: isMale,
                      onTap: () {
                        isMale = true;
                        setState(
                          () {},
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GenderCard(
                      icon: Icons.female,
                      text: 'FEMALE',
                      isActive: !isMale,
                      onTap: () {
                        isMale = false;
                        setState(
                          () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              HightCard(
                value: hight,
                onChanged: (v) {
                  hight = v;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: RemoveAddCard(
                      text: 'WEIGHT',
                      maani: weight,
                      onPressedRemove: () {
                        weight--;
                        setState(() {});
                      },
                      onPressedAdd: () {
                        weight++;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RemoveAddCard(
                      text: 'AGE',
                      maani: age.toDouble(),
                      onPressedRemove: () {
                        age--;
                        setState(() {});
                      },
                      onPressedAdd: () {
                        age++;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: 'CALCULATE',
        onPressed: () {
          // ignore: unused_local_variable
          final bmi = calculate();
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                backgroundColor: Color(0xFF211834),
                title: Center(
                  child: Text(
                    'Нормалдуу',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                content: Text(
                  '24.2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                actions: [
                  Text(
                    'Сиздин дене салмагыныз нормалдуу. Азаматсыз!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  calculate() {
    final result = weight / (hight * hight);
    if (result < 18.5) {
      return (
        "Арыксыз",
        result,
        "Сиздин дене салмагыныз арык.Бир аз салмак кошуңуз!",
        Colors.red
      );
    } else if (result >= 18.5 && result < 25) {
      return (
        "Нормалдуусуз",
        result,
        "Сиздин дене салмагыныз нормалдуу. Азаматсыз!",
        Colors.red
      );
    } else {
      (
        "Толуксуз",
        result,
        "Сиздин дене салмагыныз ашыкча. Сураныч спорт менен машыгыңыз!",
        Colors.red
      );
    }
  }
}
