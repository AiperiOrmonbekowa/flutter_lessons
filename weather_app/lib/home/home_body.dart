import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_icons.dart';
import 'package:weather_app/widgets/city_time.dart';
import 'package:weather_app/widgets/current_weather_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CityTimeWidget(text: 'Stockholm,\nSweden', time: 'Tue, Jun 30'),
        CurrentWeatherCard(
          degree: '19',
          weatherState: 'Rainy',
          icon: AssetsConst.weather05,
        )
      ],
    );
  }
}
