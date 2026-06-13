import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:newtask/change_bg_24.4.2026/screens/Login%20Screen/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();

    async.Timer(
      Duration(seconds: 2),
        (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/user.png',width: 150,),

            SizedBox(height: 20,),
            Text('Login App', style: TextStyle(fontSize: 30, ),)

          ],
        ),
      ),
    );
  }
}
