import 'package:flutter/material.dart';
class EmailPasswordFields extends StatelessWidget {

  String labelText;
  String hintText;
  bool isObscure = false;
 TextInputType? isEmail = TextInputType.emailAddress;
 Icon prefixIcon ;
 TextEditingController controller;


   EmailPasswordFields(

       this.isObscure,

       {
         required this.controller,
        this.isEmail,
         required this.prefixIcon,
     required this.labelText,
     required this.hintText,


    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: isEmail,
        decoration: InputDecoration(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide:BorderSide(color: Colors.blue,),

          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.blue),
          hintText: hintText,
          prefixIcon: prefixIcon,
          prefixStyle: TextStyle(
            color: Colors.blue
          )


        ),
        obscureText: isObscure,

      ),
    );
  }
}
