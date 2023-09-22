import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/remove_add_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/hight_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              const Row(
                children: [
                  Expanded(
                    child: GenderCard(icon: Icons.male, text: 'MALE'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GenderCard(icon: Icons.female, text: 'FEMALE'),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              HightCard(value: 180, onChanged: (v) {}),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: RemoveAddCard(
                      text: 'WEIGHT',
                      maani: 60,
                      onPressedRemove: () {},
                      onPressedAdd: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RemoveAddCard(
                      text: 'AGE',
                      maani: 28,
                      onPressedRemove: () {},
                      onPressedAdd: () {},
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
            showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    backgroundColor: Color(0xFF010120),
                    title: Text(
                      'Жыйынтык',
                      style: TextStyle(fontSize: 22),
                    ),
                    content: Column(
                      children: [
                        Text(
                          'Normalduu',
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        ),
                        
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
