import 'package:flutter/material.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: AlwaysScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      children: [
        Container(
            color: Colors.grey,
            child:Column(
              children: [
                Image.asset('assets/images/clothing.png'),
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
                Image.asset('assets/images/bags.png'),
                Text('Bags',
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
/*
Container(
      color: Colors.grey,
      child:Column(
        children: [
          Image.asset('assets/images/clothing.png'),
          Text('Clothing',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),)
        ],
      )
    )
* */