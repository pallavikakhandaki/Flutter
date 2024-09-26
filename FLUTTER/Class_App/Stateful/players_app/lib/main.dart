

import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});

  @override  
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State {
  List playersList = [
    "https://rukminim2.flixcart.com/image/850/1000/l0cr4i80/poster/i/e/g/small-ms-dhoni-poster-for-wall-captain-cool-msd-a3-posters-for-original-imagc58bghjbyfwk.jpeg?q=90&crop=false",
    "https://m.media-amazon.com/images/I/51e6aim5AaL._AC_UF1000,1000_QL80_.jpg",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3MuEVA-Bv58X1YBp6TArCJ7k3VL5NBJB0TQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUkET0OBptLcwJB7gK7ojNIXILqS3TXHbGEg&s",
  ];
  
  int counter = 0;

  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Indian Cricket Players"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: SizedBox(
            height: 500,
            width:500,
            child: Image.network(playersList[counter]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(counter<playersList.length - 1) {
              counter++;
            } else{
              counter = 0;
            }
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text("Next"),
        ),
      ),
    );
  }
}