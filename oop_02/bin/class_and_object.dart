void main() {
  Dog reks = Dog();
  reks.name = 'reks';

  reks.unChygar();

  Cat kiskis = Cat();
  reks.name = 'kiskis';

  Cat.unChygar();
}

class Dog {
  String? name;

  void unChygar() {
    print('wow! wow!');
  }
}

class Cat {
  String? name;

  static void unChygar() {
    print('miyau, miyau, miyau');
  }
}
