import 'package:flutter/material.dart';

class MessageDetails extends StatelessWidget {
  String image;
  String username;
  String message;
  DateTime time;

   MessageDetails({
     required this.image,
     required this.username,
     required this.message,
     required this.time,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,bottom: 5,right: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(username,
               // textDirection:TextDirection.ltr ,
                style:
              TextStyle(
                  color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
              Text(
                message,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.blue.withOpacity(0.7),
              ),),
            ],
          ),
          Spacer(),



          Text(
            '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

