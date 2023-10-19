// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:weather_app/constants/app_colors.dart';

class CityTimeWidget extends StatelessWidget {
  const CityTimeWidget({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTextColor),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          time,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.timeTextColor),
        ),
      ],
    );
  }
}
