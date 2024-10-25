/*
Create a screen that display the container in the center having size (height:200, width:200).
The Container must have border with rounded edges.
The border must be of the color red. Display a Text in the Center of the container.
*/


import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red,width: 3),
          color: Colors.amber,
        ),
        child: const Center(
          child: Text(
            "Core2Web",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}