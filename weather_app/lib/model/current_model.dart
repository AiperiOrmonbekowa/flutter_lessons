import 'package:weather_app/model/condition_model.dart';

class Current {
  const Current({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windMPH,
    required this.windKPH,
    required this.windDir,
    required this.precipMM,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeC,
    required this.visKM,
  });

  final String lastUpdated;
  final double tempC;
  final int isDay;
  final Condition condition;
  final double windMPH;
  final double windKPH;
  final String windDir;
  final num precipMM;
  final num precipIn;
  final int humidity;
  final int cloud;
  final double feelsLikeC;
  final num visKM;

  factory Current.fromWeatherApi(Map<String, dynamic> json) {
    return Current(
      lastUpdated: json['last_updated'],
      tempC: json['temp_c'],
      isDay: json['is_day'],
      condition: Condition.fromWeatherApi(json['condition']),
      windMPH: json['wind_mph'],
      windKPH: json['wind_kph'],
      windDir: json['wind_dir'],
      precipMM: json['precip_mm'],
      precipIn: json['precip_in'],
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelsLikeC: json['feelslike_c'],
      visKM: json['vis_km'],
    );
  }
}
