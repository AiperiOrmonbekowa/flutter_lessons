// interhatiance => dartta extends dep koldonobyz

class Animal {
  const Animal(this.name);

  final String name;

  void jashait() {}
  void unChygar() {
    print('22');
  }
}


class Cat extends Animal { //  Extends мурас алуу (генетикалык мурас)
  Cat(super.name); // Super метод алган параметрлерди Child class Parent classka откоруп берет. 

  @override // @override parent class кайра дагы озгортуп жазат.
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

/// child class Parent class тын даталарын каалагандай озгорто албайт.
/// денесин методдорун параметрлерин озгорто алабыз.
