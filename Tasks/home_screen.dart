import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String email ;
  String password;


  HomeScreen({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),

      ),
      body: Center(
        child: Column(
          children: [
            Text('Email : $email'),
            SizedBox(height: 20,),
            Text('Password : $password'),
          ],
        ),
      )
    );
  }
}
