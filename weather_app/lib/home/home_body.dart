import 'package:flutter/material.dart';
import 'package:weather_app/home/weather_extra.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/widgets/city_time.dart';
import 'package:weather_app/widgets/current_weather_card.dart';
import 'package:weather_app/widgets/weather_info_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CityTimeWidget(
          city: '${weather.location.name}\n${weather.location.country}',
          time: weather.location.localtime,
        ),
        CurrentWetherCard(
          degree: '${weather.current.tempC.toInt()}',
          weatherState: weather.current.condition.text,
          icon:
              'assets/weather/weather0${weather.current.condition.getWeatherIconIndex()}.svg',
        ),
        WeatherInfoCards(
          rainFallValue: '${weather.current.precipMM}cm',
          windSpeed: '${weather.current.windKPH}km/h',
          humidityPersent: '${weather.current.humidity}%',
        ),
        const SizedBox(height: 15),
        const WeatherExtra(),
        Container(),
      ],
    );
  }
}
