import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/constants/app_colors.dart';

class CityTimeWidget extends StatelessWidget {
  const CityTimeWidget({
    super.key,
    required this.city,
    required this.time,
  });

  final String city;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: AppColors.titleTextColor,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          getUiDateTime(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.timeTextColor,
          ),
        ),
      ],
    );
  }

  String getUiDateTime() {
    try {
      final dateTime = DateTime.parse(time);
      final dateTimeUI = DateFormat('MMMM d, EEEE H:m').format(dateTime);
      return dateTimeUI;
    } catch (e) {
      return time;
    }
  }
}
