/*
Add a container with the color red and display the text "Click Me!" in the center of the
container. On tapping the container the text must change to "Container Tapped" and 
the color of the container must change to blue
*/


import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool istapped = false;

  @override  
  Widget build(BuildContext context){
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            istapped = !istapped;
          });
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: istapped ? Colors.blue : Colors.red,
          ),
          child:Center(
            child: Text(
              istapped ? "Container Tapped" : "Click me!",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}