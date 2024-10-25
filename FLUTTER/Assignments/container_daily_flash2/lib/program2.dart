/*
In the screen add a container of size (width: 100, height: 100) that must only have a 
leftborder of width 5 and color as per your choice. Give padding to the container and 
display a textin the container.
*/ 

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.amber,
          border: Border(
            left: BorderSide(
              width: 5,
              color: Colors.pink, 
            )
          ),
        ),
        child:const Padding(
          padding: EdgeInsets.all(22.0),
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}