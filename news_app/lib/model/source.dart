class Source {
  const Source({
    required this.id,
    required this.name,
  });

  final String? id;
  final String name;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Source.fromJson(Map<String, dynamic> map) {
    return Source(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
    );
  }
}
