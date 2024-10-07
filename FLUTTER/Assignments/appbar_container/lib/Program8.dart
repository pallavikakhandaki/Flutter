import 'package:flutter/material.dart';

class Program8 extends StatelessWidget{
  const Program8({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 18, 50, 99),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // color: Colors.amber,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}