/*
Add a container in the center of the screen with size(width:200, height:200). Give a red
borderto thecontainer. Now when the usertaps the container change the color of the border
to green
*/


import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {

    final borderColor = changeColor ? Colors.red : Colors.green;

    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            changeColor = !changeColor;
          });
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.pink,
            border: Border.all(
              color: borderColor,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}

