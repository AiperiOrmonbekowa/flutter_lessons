class Condition {
  const Condition({
    required this.code,
    required this.icon,
    required this.text,
  });

  final String text;
  final String icon;
  final int code;

  factory Condition.fromWeatherApi(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  int getWeatherIconIndex() {
    if (1000 <= code && code <= 1002) return 3;
    if (1180 <= code && code <= 1246) return 4;
    if (code == 1003) return 1;
    if (1006 <= code && code <= 1147) return 2;
    if (1273 <= code && code <= 1276) return 3;
    return 1;
  }
}
