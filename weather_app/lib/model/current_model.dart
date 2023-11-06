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

  factory Current.fromWeatherApi(Map<String, dynamic> sryo) {
    return Current(
      lastUpdated: sryo['last_updated'],
      tempC: sryo['temp_c'],
      isDay: sryo['is_day'],
      condition: Condition.fromWeatherApi(sryo['condition']),
      windMPH: sryo['wind_mph'],
      windKPH: sryo['wind_kph'],
      windDir: sryo['wind_dir'],
      precipMM: sryo['precip_mm'],
      precipIn: sryo['precip_in'],
      humidity: sryo['humidity'],
      cloud: sryo['cloud'],
      feelsLikeC: sryo['feelslike_c'],
      visKM: sryo['vis_km'],
    );
  }
}
