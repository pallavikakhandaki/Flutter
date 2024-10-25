/*
In the screen add a container of Size(Width 100, height 100) The container must have 
a border as displayed in the below image. Give color to the container and border
as per your choice.
*/ 

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.purple,
            width: 5
          )
        ),
      ),
    );
  }
}
