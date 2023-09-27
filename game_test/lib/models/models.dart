import 'package:flutter/material.dart';

class Continents {
  Continents({required this.text, required this.icon, required this.color});
  final String text;
  final String icon;
  final Color color;
}

final europe = Continents(
    text: 'Europe',
    icon: 'assets/icons/europe.svg',
    color: const Color(0xFF071952));
final asia = Continents(
    text: 'Asia',
    icon: 'assets/icons/asia.svg',
    color: const Color(0xFF279EFF));
final northAmerica = Continents(
    text: 'North America',
    icon: 'assets/icons/asia.svg',
    color: const Color(0xFF4A55A2));
final southAmerica = Continents(
    text: 'South America',
    icon: 'assets/icons/asia.svg',
    color: const Color(0xFF102C57));
final africa = Continents(
    text: 'Africa',
    icon: 'assets/icons/africa.svg',
    color: const Color(0xFF26577C));
final australia = Continents(
    text: 'Australia',
    icon: 'assets/icons/australia.svg',
    color: const Color(0xFF5C4B99));

List continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
