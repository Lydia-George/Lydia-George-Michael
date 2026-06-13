import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TrialApiScreen extends StatelessWidget {
  const TrialApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        getDAtaByApi();
      }),
    );
  }



  getDAtaByApi()async{

 http.Response  result= await http.get(
        Uri.parse('https://2we2026.pythonanywhere.com/api/departments/'));
 print("Data is : ${result.body}");
  }


}
