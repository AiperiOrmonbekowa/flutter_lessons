class Animal {
  const Animal(this.name);

  final String name;

  void jashait() {}
  void unChygar() {
    print('22');
  }
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void unChygar() {
    print('miayy');
    super.unChygar();
  }
}

class Jolbors extends Cat {
  Jolbors(super.name);
  @override
  void unChygar() {
    print('vaaayg');
    // super.unChygar();
  }
}

void main() {
  final cat1 = Cat('Tom');
  final jolbors1 = Jolbors('Simba');

  print(cat1.name);
  cat1.unChygar();
  cat1.jashait();

  print(jolbors1.name);
  jolbors1.unChygar();
  jolbors1.jashait();
}
