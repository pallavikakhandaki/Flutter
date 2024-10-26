/*
Create a container in the center of the screen, now in the background of the container
display an Image (the image can be an asset or network image). Also, display text in the
center of the container
*/


import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 350,
        height: 350,
        child: Stack(
          children: [
              Image.asset(
              "assets/images/program2.jpg",
            ),
            Center(
              child: Text(
                "Core2Web",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[900]
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}