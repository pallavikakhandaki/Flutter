

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Static ListView",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network("https://tse2.mm.bing.net/th?id=OIP.Kd_hwmTeu7TWcEp-Pl7zkQHaFF&pid=Api&P=0&h=180",),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              "Bhari",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                
              ],
            ),
            
            Image.network("https://tse2.mm.bing.net/th?id=OIP.Kd_hwmTeu7TWcEp-Pl7zkQHaFF&pid=Api&P=0&h=180",),
            GestureDetector(
              onTap:(){
                print("Button Pressed");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                child: const Center(
                  child: Text(
                    "Press me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}