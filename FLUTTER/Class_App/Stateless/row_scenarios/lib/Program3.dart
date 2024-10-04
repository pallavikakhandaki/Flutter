
import 'package:flutter/material.dart';

class Program3 extends StatelessWidget{
  const Program3({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "Row Scenarios",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
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