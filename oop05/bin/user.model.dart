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
