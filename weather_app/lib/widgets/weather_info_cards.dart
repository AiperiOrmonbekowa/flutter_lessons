import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/constants/app_icons.dart';
import 'package:weather_app/widgets/weather_info_card.dart';

class WeatherInfoCards extends StatelessWidget {
  const WeatherInfoCards({
    required this.rainFallValue,
    required this.windSpeed,
    required this.humidityPersent,
    super.key,
  });

  final String rainFallValue;
  final String windSpeed;
  final String humidityPersent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WetherInfoCard(
          icon: SvgPicture.asset(
            AssetsConst.rain,
            height: 70,
            fit: BoxFit.cover,
          ),
          title: 'RainFall',
          value: rainFallValue,
        ),
        WetherInfoCard(
          icon: SvgPicture.asset(
            AssetsConst.wind,
            height: 70,
            fit: BoxFit.cover,
          ),
          title: 'Wind',
          value: windSpeed,
        ),
        WetherInfoCard(
          icon: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SvgPicture.asset(
              AssetsConst.humidity,
              height: 60,
              fit: BoxFit.fitHeight,
            ),
          ),
          title: 'Humidity',
          value: humidityPersent,
        )
      ],
    );
  }
}
