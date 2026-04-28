import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,

          leading: IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {  },),
          actions: [
            IconButton(onPressed: (){
              print('Profile');
            },
                icon: Icon(Icons.account_circle_outlined)),
            IconButton(
                onPressed: (){
                  print('Login');
                },
                icon: Icon(Icons.login_outlined)
            ),


            IconButton(
                onPressed: (){
                  print('Language');
                },
                icon: Icon(Icons.language)
            ),

          ],
          title: Text('We App',
              style: TextStyle(color: Colors.blueGrey)),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello Flutter',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}
