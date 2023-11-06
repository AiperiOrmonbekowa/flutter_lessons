import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_colors.dart';
import 'package:weather_app/constants/app_icons.dart';
import 'package:weather_app/widgets/weather_extra_card.dart';

class WeatherExtra extends StatelessWidget {
  const WeatherExtra({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            labelColor: AppColors.blackColor,
            indicatorColor: AppColors.blackColor,
            dividerColor: AppColors.titleTextColor,
            tabs: [
              const Tab(text: 'Today'),
              const Tab(text: 'Tomorrow'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: const Tab(text: 'Next 7 Days >'),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const WeatherExtraCard(
                  title: '13:00',
                  icon: AssetsConst.weather01,
                  degree: '21 °',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
