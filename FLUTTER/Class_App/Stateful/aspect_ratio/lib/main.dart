

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override  
  State createState() => _MainApp();
}

class _MainApp extends State{
  TextEditingController nameController = TextEditingController();

  String? myName;

  List<String> playerList = [];

  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkxM7bqUhVW4EaLOR21oEaV0sj7bb05kCNDg&s"),
          ),
        ),
      ),
    );
  }
}