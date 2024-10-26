/*
Create circular container and given the container 2 colors i.e. red and blue. 50% ofthe container
must contain red and the other 50% must containe blue color.

Note : The transition from red color to blue must be sharp
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
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5,0.5],
          )
        ),
      ),
    );
  }
}