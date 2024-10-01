

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override 
  State createState() => _CounterAppState();
}

class _CounterAppState extends State{
  int counter = 0;

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text(
          "Counter App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: Column(
        // mainAxisSize: MainAxisSize.min, 
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            backgroundColor: Colors.blue[900],
            child:const Icon(
              Icons.add,
              color:Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: (){
              if (counter > 0){
                counter--;
                setState(() {});
              }
            },
            backgroundColor: Colors.blue[900],
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {});
            },
            backgroundColor: Colors.blue[900],
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}