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
        code: json['code'], icon: json['icon'], text: json['text']);
  }
}
