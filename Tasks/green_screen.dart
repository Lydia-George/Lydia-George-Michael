import 'package:flutter/material.dart';
class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Green', style: TextStyle(
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}
