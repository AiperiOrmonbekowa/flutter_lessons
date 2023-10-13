class User {
  User({
    required this.id,
    required String nameValue,
    required this.lastName,
  }) : _name = nameValue;

  final int id;
// ignore: unused_field
  final String _name; // private => класстын ичинен гана колдоно алабыз
  final String lastName; // public

// metody
  void sendTx() {
    print('sendTx ishtedi');
  }
}

/// Баарын бир класска чогултаканыбыз учун бул => ENCAPSULATION болот.
/// ENCAPSULATION ичинде методдору, параметрлери, геттер сеттерлери бар.
class Client {
  String? _name;
  // ignore: unused_field
  String? _lastName;

  /// getter
  /// getter => ички маалыматты сыртка берет.
  String get fullName {
    return "$_name + $_lastName";
  }

  /// setter
  /// setter => сырттан маалымат алып ичке берет.
  set name(String name) {
    _name = name;
  }

  /// funksya
  void setName(String lastName) {
    _lastName = lastName;
  }
}
