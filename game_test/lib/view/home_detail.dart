// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:game_test/components/appBar_title_widget.dart';
import 'package:game_test/components/slider.dart';

class Homedetail extends StatelessWidget {
  const Homedetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitleWidget(),
      ),
      body: Column(
        children: [
          const SliderWidget(),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Англия',
            style:
                GoogleFonts.besley(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/images/london.jpg'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VariantWidget(text: 'Лондон'),
              VariantWidget(text: 'Мадрид'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VariantWidget(text: 'Минск'),
              VariantWidget(text: 'Париж'),
            ],
          ),
        ],
      ),
    );
  }
}

class VariantWidget extends StatelessWidget {
  const VariantWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
