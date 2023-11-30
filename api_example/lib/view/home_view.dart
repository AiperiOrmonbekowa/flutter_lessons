import 'package:api_example/constants/api_const.dart';
import 'package:api_example/model/api_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  Future<ApiAdress?> fetchData() async{
    final dio = Dio();
    final response = await dio.get(ApiConst.adress);
 if (response.statusCode == 200) {
        final api = ApiAdress(id: response.data['api'][0]['id'], );
        return api;
      }
  return null;
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api example'),
        centerTitle: true,
      ),
      body: Center(child: FutureBuilder(future: fetchData(), builder: (context, snapshot){
        if (snapshot.hasError) {
          return const CircularProgressIndicator();
        } else if(snapshot.hasData) {
          final api = snapshot.hasData;
          return  Column(children: [
          Text('${api.id}')
          ],
          );
        }
      },
      ),
      ),
    );
  }
}
