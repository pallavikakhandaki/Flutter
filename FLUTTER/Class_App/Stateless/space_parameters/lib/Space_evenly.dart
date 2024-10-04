import 'package:flutter/material.dart';

class Space_evenly extends StatelessWidget{
  const Space_evenly({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Space Evenly",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.red,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}