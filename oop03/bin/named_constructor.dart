void main() {
  // ignore: unused_local_variable
  Student aktan = Student('01', 'Aktan', 20, 'Programmer', 1, 'KNU', 4.5);
}

class Student {
  Student(this.id, this.name, this.age, this.spacial, this.kurs,
      this.university, this.avarageScore);
  String? id;
  String? name;
  int? age;
  String? spacial;
  int? kurs;
  String? university;
  double? avarageScore;

  void taanysh() {
    print(
        'Menin atym $name. Men $age jashtamyn. $university universtette $kurs kursta okyim. Kesibim $spacial, orto baam $avarageScore');
  }
}
