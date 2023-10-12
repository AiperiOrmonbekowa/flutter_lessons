// import 'user.model.dart';

void main() {
// // ignore: unused_local_variable
// final user1 = User(id: 1, name:" Aiperi", lastName: 'Ormonbekova');

// print(user1.id);
// print(user1.lastName);
// // print(user1.id);
  print(flickSwitch(["bicycle", "jarmony", "flick", "sheep", "flick"]));
}

// String evenOdd(int number) {
//   if (number % 2 == 0) {
//     return "even";
//   } else {
//     return "Odd";
//   }
// }

List<bool> flickSwitch(List<String> lst) {
  var all = true;

  List<bool> list = [];
  for (var i in lst) {
    if (i == "flick") {
      all = !all;
    }
    list.add(all);
  }
  return list;
}
