class Location {
  const Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localTimeEpoch,
    required this.localtime,
  });

  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localTimeEpoch;
  final String localtime;

  factory Location.fromWeatherApi(Map<String, dynamic> json) {
    return Location(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        lat: json['lat'],
        lon: json['lon'],
        tzId: json['tz_id'],
        localTimeEpoch: json['localtime_epoch'],
        localtime: json['localtime']);
  }
}
