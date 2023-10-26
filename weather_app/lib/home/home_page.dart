import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/constants/app_colors.dart';
import 'package:weather_app/constants/app_icons.dart';
import 'package:weather_app/home/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg02,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsConst.searchIcon),
        ),
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetsConst.menu),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [AppColors.bg01, AppColors.bg02],
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: HomeBody(),
        ),
      ),
    );
  }
}
