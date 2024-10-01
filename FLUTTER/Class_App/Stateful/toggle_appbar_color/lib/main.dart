

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});

  @override  
  State createState() => _ToggleColorState();
}

class _ToggleColorState extends State{
  bool changeColor = true;

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle App Bar"),
          centerTitle: true,
          backgroundColor: changeColor? Colors.blue[900] : Colors.amber,
        ),
        body: const Center(
          child: Text(
            "Hello World...!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(changeColor == true){
              changeColor = false;
            } else {
              changeColor = true;
            }
            setState(() {});
          },
          backgroundColor: Colors.blue[900],
          child: const Text(
            "Toggle",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        ),
      );
  }
}