void main() {
  // ignore: unused_local_variable
  final user = User('Aiperi', 'Ormonbekova',
      age: 19,
      nation: ' Kyrgyz',
      proffesion: 'Flutter developer',
      tuulganJeri: "Tuulgan jeri",
      password: '0000');
  print(user.firstBame);
}

//  Конструкторлор 2 турго болунот =>  Jonokoi constructor &&   namedConstructor

class User {
  /// 1) Jonokoi constructor
  /// Жонокой конструктордо кезеги менен аталбай эле берилет
  // User(
  //      this.name,
  //      this.firstBame,
  //      this.age,
  //      this.nation,
  //      this.proffesion,
  //      this.tuulganJeri,
  //      this.password,
  //     );

  /// 1.2) Jonokoi constructor default
  /// Бул жонокой бирок default бар кээ бир пропортилерин бербей койууга болот
//  const User(
//     this.name,
//     this.firstBame,
//     this.proffesion,
//     this.password,
//     [
//  this.nation = 'Kyrgyz',
//  this.age = 18,
//  this.tuulganJeri = 'Kyrgyzstan',
//     ]
//     );

  /// 2) namedConstructor (atama constructor)
  /// фигурный кашаа колдонуп, атап беребиз required менен
  // User({
  //     required this.name,
  //     required this.firstBame,
  //     required this.age,
  //     required this.nation,
  //     required this.proffesion,
  //     required this.tuulganJeri,
  //     required this.password,
  //     });

  /// 2.1) namedConstructor default (atama constructor defaulty bar)
  /// Бул жерден деле атап беребиз, бирок кээ бир пропортилерин бербей деле койсок болот
  // User({
  //     required this.name,
  //     required this.firstBame,
  //     required this.age,
  //      this.nation = 'kyrgyz',
  //     required this.proffesion,
  //     this.tuulganJeri = 'Kyrgyzstan',
  //     required this.password,
  //     });

  /// 3) Complex constructor (ekoo aralashtyrylgan dep tushunobuz)
  /// Комплех конструктордон, 1чи 2 чи пропортилери созсуз берилиш керек  атабай туруп, калгандары namedConstructor атап беришибиз керек
  // User(
  //   this.name,
  //   this.firstBame, {
  //   required this.age,
  //   required this.nation,
  //   required this.proffesion,
  //   required this.tuulganJeri,
  //   required this.password,
  // });

  /// 3.1) Complex Constructor (default bar)
  /// бул жактан Jonokoi, namedConstructor, default конструкторлорду бердик
  User(
    this.name,
    this.firstBame, {
    required this.age,
    this.nation = 'Kyrgyz',
    required this.proffesion,
    this.tuulganJeri = 'Kyrgyzstan',
    required this.password,
  });

  final String name;
  final String firstBame;
  final int age;
  final String nation;
  final String proffesion;
  final String tuulganJeri;
  final String password;
}
