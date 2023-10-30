// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/constants/app_colors.dart';
import 'package:weather_app/constants/app_icons.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard({
    Key? key,
    required this.degree,
    required this.weatherState,
    required this.icon,
  }) : super(key: key);
  final String degree;
  final String weatherState;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          icon,
          height: 190,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Text(
                  '$degree ',
                  style: const TextStyle(
                      fontSize: 90,
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: AppColors.degreeTextColor),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: SvgPicture.asset(
                    AssetsConst.degreeSign,
                    height: 30,
                  ),
                ),
              ],
            ),
            Text(
              '  $weatherState',
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: AppColors.degreeTextColor),
            ),
          ],
        ),
      ],
    );
  }
}
