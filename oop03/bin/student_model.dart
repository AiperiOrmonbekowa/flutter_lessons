class Student {
  Student(
      {this.id,
      this.name,
      this.age,
      this.spacial,
      this.kurs,
      this.university,
      this.avarageScore});
      
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
