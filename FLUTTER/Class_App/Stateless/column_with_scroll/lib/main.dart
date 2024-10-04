
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column With Scroll",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20,),
            Image.network("http://thewowstyle.com/wp-content/uploads/2015/01/nature-wallpaper-27.jpg",),
            const SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ), 
            const SizedBox(height: 20,),   
            Image.network("http://thewowstyle.com/wp-content/uploads/2015/01/nature-wallpaper-27.jpg",),
            const SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            const SizedBox(height: 20,),
            Image.network("http://thewowstyle.com/wp-content/uploads/2015/01/nature-wallpaper-27.jpg",),
            const SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ), 
            const SizedBox(height: 20,),
          ],
        ),
        ),
      ),
    );
  }
}