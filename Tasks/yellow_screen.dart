import 'package:flutter/material.dart';
class YellowScreen extends StatelessWidget {
  const YellowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Yellow', style: TextStyle(
              color: Colors.white,
            ),),
          )
        ],
      ),
    );
  }
}
