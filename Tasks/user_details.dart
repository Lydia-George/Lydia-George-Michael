import 'package:flutter/material.dart';
class UserDetails extends StatelessWidget {

  String image ;
  String username;
   UserDetails({required this.image,required this.username,super.key,});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage(image),
        ),
        Text(username,
          style: TextStyle(
              color: Colors.blue
          ),
        ),
      ],
    );
  }
}
