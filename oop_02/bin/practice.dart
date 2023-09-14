void main() {
  // object
  WeatherApp weather = WeatherApp(
    location: "Bishkek",
    temperature: 19.0,
    humidity: 42,
    conditions: "Sunny",
  );

  print("Weather in ${weather.location}:");
  print("Temperature: ${weather.temperature}°C");
  print("Humidity: ${weather.humidity}%");
  print("Conditions: ${weather.conditions}");
}

// class
class WeatherApp {
  WeatherApp({
    required this.location,
    required this.temperature,
    required this.humidity,
    required this.conditions,
  });

  //proportisi
  final String location;
  final double temperature;
  final int humidity;
  final String conditions;

  // metod
  void autumn() {
    print('');
  }
}
