import 'package:flutter/material.dart';
import 'package:newtask/change_bg_24.4.2026/screens/Login%20Screen/components/social_login.dart';
import 'package:newtask/change_bg_24.4.2026/screens/Login%20Screen/home_screen.dart';

import 'components/email_password_field.dart';
import 'components/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Log in',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            EmailPasswordFields(
              controller: emailController,
              false,
              isEmail: TextInputType.emailAddress,
              labelText: 'Email',
              hintText: 'Enter Your Email',
              prefixIcon: Icon(Icons.email_outlined),
            ),
            EmailPasswordFields(
              controller: passwordController,
              true,
              labelText: 'Password',
              hintText: 'Enter Your Password',
              prefixIcon: Icon(Icons.password_sharp),
            ),

            LoginButton(btnTitle: 'Sign in',
            emailController: emailController,
              passwordController: passwordController,
            ),
            SizedBox(height: 10,),

            TextButton(
              onPressed: () {

              },
              child: Text(
                'Forget Password ?',
                style: TextStyle(color: Colors.blue),
              ),
            ),

            SizedBox(height: 50),

            SocialLogin(btnTitle: 'Login With Apple',imagePath: 'assets/images/apple.png',),

            SizedBox(height: 20),

            SocialLogin(btnTitle: 'Login With Google', imagePath: 'assets/images/Google (3).png')
          ],
        ),
      ),
    );
  }
}
