

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override  
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State{
  void openBottomSheet(){
    showModalBottomSheet(
      context: context, 
      builder: (context) {
        return Column(
          children: [
            const Text(
              "BottomSheet Demo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 200,
              color: Colors.amber,
            ),
          ],
        );
      },
    );
  }

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("BottomSheet"),
      ),
      body: const Center(
        child: Text(
          "BottomSheet Demo",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}