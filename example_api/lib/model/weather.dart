

class Weather {
  Weather({
    required this.id,
    required this.name,
    required this.episode,
  });
  final int id;
  final String? name;
  final String episode;

 

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as int,
      name: map['name'] != null ? map['name'] as String : null,
      episode: map['episode'] as String,
    );
  }
 
}
