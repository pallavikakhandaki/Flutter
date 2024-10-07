
import 'package:flutter/material.dart';

class Program4 extends StatelessWidget{
  const Program4({super.key});

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hello Core2Web",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.blue,
              ),
              const SizedBox(height: 10,),
               Container(
                width: 360,
                height: 200,
                color: Colors.red,
              ),
            ],
          ),
         
        ),
      ),
    );
  }
}