class Weather {
  const Weather({
    required this.current,
    required this.location,
  });

  final Location location;
  final Current current;
}

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
}

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
}

class Condition {
  const Condition({
    required this.code,
    required this.icon,
    required this.text,
  });

  final String text;
  final String icon;
  final int code;
}
