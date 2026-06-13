import 'package:flutter/material.dart';
class MenCategories extends StatelessWidget {
  const MenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            color: Colors.grey,
            child:Column(
              children: [
                Image.asset('assets/images/men_clothing.png'),
                Text('Clothing',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),)
              ],
            )
        ),
        Container(
            color: Colors.grey,
            child:Column(
              children: [
                Image.asset('assets/images/shoes.png'),
                Text('Shoes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),)
              ],
            )
        ),
        Container(
            color: Colors.grey,
            child:Column(
              children: [
                Image.asset('assets/images/hoodies.png'),
                Text('Hoodies',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            )
        ),
        Container(
            color: Colors.grey,
            child:Column(
              children: [
                Image.asset('assets/images/watches.png'),
                Text('Watches',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),)
              ],
            )
        ),
      ],
    );
  }
}
