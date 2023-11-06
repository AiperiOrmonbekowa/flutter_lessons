// async => ubakyt ala turgan funksia
// await => funcksianyn atkarylyshyn kutuu
// Future => kelechektegi type
// try => atkarganga araket kylyp kor
// catch => bir kata bolso

import 'package:http/http.dart';

void main() async {
  final url =
      'http://api.weatherapi.com/v1/current.json?key=e9d7452a41614cdea32164320231910&q=bishkek';

  try {
    final uri = Uri.parse(url);
    final client = Client();
    final response = await client.get(uri);
    print(response);
    print(response.body);
  } catch (e) {
    print('kata boldy');
  }
}
