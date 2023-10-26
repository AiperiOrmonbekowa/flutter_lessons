import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_colors.dart';

class WetherInfoCard extends StatelessWidget {
  const WetherInfoCard({
    required this.icon,
    required this.title,
    required this.value,
    super.key,
  });

  final Widget icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Card(
        color: AppColors.whiteColor.withOpacity(0.5),
        shadowColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.degreeTextColor,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: const TextStyle(
                color: AppColors.degreeTextColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }
}
