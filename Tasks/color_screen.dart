import 'package:flutter/material.dart';
class ColorScreen extends StatelessWidget {
 Map data;

  ColorScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      backgroundColor:this.data['colorObject'] ,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(this.data['colorName'], style: TextStyle(
            color: Colors.white
          ),))
        ],
      ),
    );
  }
}
