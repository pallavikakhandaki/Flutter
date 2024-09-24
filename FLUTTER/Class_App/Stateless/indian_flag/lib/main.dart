

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
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width:5,
                    height:450,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  Container(
                    height:35,
                    width:250,
                    color: Colors.orange,
                  ),
                  Container(
                    height:35,
                    width:250,
                    color:Colors.white,
                    child: Image.network("https://cdn.pixabay.com/photo/2023/06/23/17/47/ashok-chakra-8083914_960_720.png"),
                  ),
                  Container(
                    height:35,
                    width:250,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}