void main() {
  Car tesla = Car('Tesla');
  tesla.juruu();
  tesla.marka = 'Tesla';
  tesla.juruu();
}

class Car {
  Car(this.marka);
  String? marka;

  void juruu() {
    print('jurup baratat');
  }
}
