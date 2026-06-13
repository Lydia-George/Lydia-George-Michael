import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  String btnTitle;
  String imagePath;

  SocialLogin({required this.btnTitle,
    required this.imagePath,
    super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},

      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if( imagePath != null)
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(imagePath!,
                  height: 28,
                    width: 28,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(width:  10,),
              Text(btnTitle, style: TextStyle(
                color: Colors.white
              ),),

        ]),
      ),
    );
  }
}
