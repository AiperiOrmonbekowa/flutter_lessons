import 'package:weather_app/model/current_model.dart';
import 'package:weather_app/model/location_model.dart';

class Weather {
  const Weather({
    required this.current,
    required this.location,
  });

  final Location location;
  final Current current;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      current: Current.fromWeatherApi(json['current']),
      location: Location.fromWeatherApi(json['location']),
    );
  }
}
