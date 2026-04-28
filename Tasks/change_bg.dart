import 'package:flutter/material.dart';
import 'package:newtask/change_bg_24.4.2026/screens/green_screen.dart';
import 'package:newtask/change_bg_24.4.2026/screens/color_screen.dart';
import 'package:newtask/change_bg_24.4.2026/screens/yellow_screen.dart';

class ChangeBg extends StatefulWidget {
  const ChangeBg({super.key});

  @override
  State<ChangeBg> createState() => _ChangeBgState();
}

class _ChangeBgState extends State<ChangeBg> {
  Color bg = Colors.white;
  List<Map> list_colors = [
    {'colorName': 'Red', 'colorObject': Colors.red, },
    {'colorName': 'Yellow', 'colorObject': Colors.yellow, },
    {'colorName': 'Green', 'colorObject': Colors.green, },

    {'colorName': 'Blue', 'colorObject': Colors.blue, },
    {
      'colorName': 'Cyan Accent',
      'colorObject': Colors.cyanAccent,
    },

    {
      'colorName': 'Purple',
      'colorObject': Colors.deepPurple,
    },
  ];
  Color containerColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.white60,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) => ColorScreen(data: list_colors[i]),
                            ),
                          );
                        },
                        child: Text(
                          list_colors[i]['colorName'],
                          style: TextStyle(
                            fontSize: 25,
                            color: list_colors[i]['colorObject'],
                          ),
                        ),
                      ),
                    ),

                  MaterialButton(
                    color: Colors.white60,
                    onPressed: () {
                      bg = Colors.white;
                      setState(() {});
                    },
                    child: Icon(Icons.restart_alt_sharp, color: Colors.teal),
                  ),
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 3; i < 6; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.white60,

                    onPressed: () {
                      containerColor = list_colors[i]['colorObject'];
                    },
                    child: Text(
                      list_colors[i]['colorName'],
                      style: TextStyle(
                        fontSize: 20,
                        color: list_colors[i]['colorObject'],
                      ),
                    ),
                  ),
                ),
            ],
          ),

          Container(
            height: 200,
            width: double.infinity,
            margin:EdgeInsets.all(20) ,
            color: containerColor,
          )
        ],
      ),
    );
  }
}
