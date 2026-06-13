import 'package:flutter/material.dart';
import 'package:newtask/Shopping_App8.5.2026/components/categories_screen.dart';
import 'package:newtask/Shopping_App8.5.2026/components/men_categories.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        length: 4,
        child: Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        bottom: TabBar(
            tabs: [
          Tab(
            text: 'All',
          ),
          Tab(
            icon: Icon(Icons.woman, color: Colors.blue,),
            text: 'Female',

          ),
          Tab(
            icon: Icon(Icons.man, color: Colors.blue,),
            text: "Male",
          ),
          Tab(
            icon: Icon(Icons.child_care_sharp,  color: Colors.blue,),
            text: 'Kids',
          )
        ]),

      ),

          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Categories', style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                    Spacer(),
                    Text('See All'),

                  ],
                ),
              ),

              SizedBox(
                height: 400,
                child: TabBarView(
                    children:[
                  CategoriesScreen(),
                  CategoriesScreen(),
                  MenCategories(),
                  CategoriesScreen(),

                ]),
              )


            ],

          ),
    ),



    );
  }
}
