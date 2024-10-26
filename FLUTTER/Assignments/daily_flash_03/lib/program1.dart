/*
Create a container in the Center of the screen with size(width:300, height:300) and display
an image in the center of the Container. Apply appropriate to the container. 
*/

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.pink,
          ),
          child: Image.asset(
            "assets/images/images.jpg",
            width: 300,
          ),
        ),
      ),
    );
  }
}