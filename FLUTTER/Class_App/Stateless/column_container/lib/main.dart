

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
           ],
          ),
        ),
      ),
    );
  }
}