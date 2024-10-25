/*
Create a container that will have a border. The top right and bottom left corners
of the border must be rounded. Now display the Txt in the container and give 
appropriate padding to the container 
*/


import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          border: Border.all(
            color: Colors.pink,
            width: 5
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
        ),
        child: const Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 20
          ),
          child: Text(
            "Pallavi",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  } 
}