/*
Create a container with size (height:200, width:200) now give a shadow to the container
but the shadow must only be at the top side of the container.
*/


import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0,-10),
              blurRadius: 8,
              spreadRadius: 1
            )
          ]
        ),
      ),
    );
  }
}