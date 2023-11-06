import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:weather_app/constants/app_colors.dart';
import 'package:weather_app/constants/app_icons.dart';
import 'package:weather_app/home/home_body.dart';
import 'package:weather_app/model/weather_model.dart';

const url = 
    'http://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q=bishkek';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather?> getWeatherData() async {
    try {
      final uri = Uri.parse(url);
      final client = Client();
      final response = await client.get(uri);
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final weather = Weather.fromJson(data);
      return weather;
    } catch (e) {
      throw Exception('Bit kata boldu, kata: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg02,
        elevation: 0,
        title: const Text('Weather App'),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsConst.search),
        ),
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
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [0.2, 0.8],
            colors: [
              AppColors.bg01,
              AppColors.bg02,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: FutureBuilder<Weather?>(
            future: getWeatherData(),
            builder: (context, snapshot) {
              // `context` widget daragybyzdyn kaisyl jerinde bolgonubuzdu beret
              // `snapshot` bizdin datanym abaly M:
              // - kutup jatabyz,
              // - iygiliktuu data keldi,
              // - Error bolup data kelgen jok
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return HomeBody(weather: snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text('Bir kata boldu kata: ${snapshot.error}');
                }
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
