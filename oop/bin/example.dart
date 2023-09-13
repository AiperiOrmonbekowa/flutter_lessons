// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  // olko kg = olko();
  // olko kz = olko();
}

class  olko {
  String name; 
  int kalky; 
  int popylation; 
  List<oblus> oblustar; 
  olko({ 
    required this.name,
    required this.kalky,
    required this.popylation,
    required this.oblustar,
  });
} 

class Shaar {
  String name; 
  double area; 
  int popylation; 
  Shaar({
    required this.name,
    required this.area,
    required this.popylation,
  });
}
class oblus {
  String name;
  double area;
  int population;
  List <Shaar> shaar;
  Shaar borbor;
  oblus({
    required this.name,
    required this.area,
    required this.population,
    required this.shaar,
    required this.borbor,
  });
} 
 
  