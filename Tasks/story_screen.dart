import 'package:flutter/material.dart';
import 'package:newtask/change_bg_24.4.2026/screens/Story%20Screen/user_details.dart';

import 'message_details.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'messenger',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Lydia',
                    ),
                    SizedBox(width: 20),
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Peter',
                    ),
                    SizedBox(width: 20),

                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Lydia',
                    ),
                    SizedBox(width: 20),
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Peter',
                    ),
                    SizedBox(width: 20),

                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Lydia',
                    ),
                    SizedBox(width: 20),
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Peter',
                    ),
                    SizedBox(width: 20),

                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Lydia',
                    ),
                    SizedBox(width: 20),
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Peter',
                    ),
                    SizedBox(width: 20),

                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Lydia',
                    ),
                    SizedBox(width: 20),
                    UserDetails(
                      image: 'assets/images/user.png',
                      username: 'Peter',
                    ),
                    SizedBox(width: 20),



                  ],
                ),
              ),
            ),
            SizedBox(height: 50),



            MessageDetails(
              image: 'assets/images/user.png',
              username: 'Peter',
              message: 'Hello , how are you ?!',
              time: DateTime.now(),
            ),

            MessageDetails(
              image: 'assets/images/user.png',
              username: 'Dodo',
              message: 'Hello , how are you ?!',
              time: DateTime.now(),
            ),

            MessageDetails(
              image: 'assets/images/user.png',
              username: 'Tina',
              message: 'Hello , how are you ?!',
              time: DateTime.now(),
            ),

            MessageDetails(
              image: 'assets/images/user.png',
              username: 'Boutchy',
              message: 'Hello , how are you ?!',
              time: DateTime.now(),
            ),

            MessageDetails(
              image: 'assets/images/user.png',
              username: 'Mooka',
              message: 'Hello , how are you ?!',
              time: DateTime.now(),
            ),


          ],
        ),
      ),
    );
  }
}
