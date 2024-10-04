import 'package:flutter/material.dart';

class Space_between extends StatelessWidget{
  const Space_between({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Space Between",
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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