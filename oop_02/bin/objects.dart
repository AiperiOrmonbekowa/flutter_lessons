/* 
Object => Dart
В объектно-ориентированном программировании объект - это
 автономная единица кода и данных. Объекты создаются на 
 основе шаблонов, называемых классами. Объект состоит из 
 свойств (переменных) и методов (функций). Объект - это экземпляр класса.

Например, объект велосипеда может иметь такие атрибуты, 
как цвет, размер и текущая скорость. У него могут быть 
такие методы, как changeGear, pedalFaster и brake.
*/

void main() {
  Car bmwx7 = Car();
  print(bmwx7);

  bmwx7.marka = 'bmw';
  bmwx7.model = 'x7';
  bmwx7.motor = 'Soonun mator';
  bmwx7.atKuchu = 100;
  bmwx7.kolomy = 4.4;
  bmwx7.color = 'black';
  bmwx7.country = 'Germany';
  bmwx7.jyl = 2021;
}

class Car {
  String? marka;
  String? model;
  String? motor;
  int? atKuchu;
  double? kolomy;
  String? color;
  String? country;
  int? jyl;
}

void jurot() {
  print('jurup baratat');
}
