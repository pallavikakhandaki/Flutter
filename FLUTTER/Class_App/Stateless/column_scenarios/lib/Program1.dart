

import 'package:flutter/material.dart';

class Program1 extends StatelessWidget{
  const Program1({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text(
            "Column Scenarios",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            ],
          ),
        ),
      );
  }
}