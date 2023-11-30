import 'package:dio/dio.dart';
import 'package:example_api/constants/api_const.dart';
import 'package:example_api/model/weather.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Future<Weather?> fetchData() async {
      final dio = Dio();
      await Future.delayed(
        const Duration(seconds: 4),
      );
      final res = await dio.get(ApiConst.adress);
      if (res.statusCode == 200) {
        Weather? weather;
        weather = Weather(
          id: res.data['id'],
          name: res.data['name'],
          episode: res.data['episode'],
        );
        return weather;
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Example'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text('${snapshot.data?.id}'),
                    Text('${snapshot.data?.name}'),
                    Text('${snapshot.data?.episode}'),
                  ],
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('error'),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
