import 'package:flutter/material.dart';
import 'package:newtask/change_bg_24.4.2026/screens/Login%20Screen/home_screen.dart';

class LoginButton extends StatelessWidget {
  String btnTitle;
  String? imagePath;

  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  LoginButton(
     {this.emailController,
        this.passwordController,
    this.imagePath,
    required this.btnTitle,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (emailController != null && passwordController != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => HomeScreen(
                    email: emailController!.text,
                    password: passwordController!.text,
                  ),
            ),
          );
        }
      },
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath!,
                    width: 28,
                    height: 28,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(width: 10),
              Text(btnTitle, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
