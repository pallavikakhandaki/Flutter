import 'package:flutter/material.dart';

class Program7 extends StatelessWidget{
  const Program7({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Row Scroll",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                child: Image.network("https://img.freepik.com/free-photo/beautiful-ai-natural-landscape_23-2151839261.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1728172800&semt=ais_hybrid",
                height: 300,
                width: 150,
                ),
              ),
              const SizedBox(width: 5,),
               SizedBox(
                child: Image.network("https://images.pexels.com/photos/1115090/pexels-photo-1115090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 300,
                width: 150,
                ),
              ),
              const SizedBox(width: 5,),
              SizedBox(
                child: Image.network("https://images.pexels.com/photos/600114/pexels-photo-600114.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 300,
                width: 150,
                ),
              ),
              const SizedBox(width: 5,),
              SizedBox(
                child: Image.network("https://images.pexels.com/photos/2343173/pexels-photo-2343173.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 300,
                width: 150,
                ),
              ),
              const SizedBox(width: 5,),
              SizedBox(
                child: Image.network("https://images.pexels.com/photos/20718356/pexels-photo-20718356/free-photo-of-close-up-of-a-branch-of-cherry-blossom.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                height: 300,
                width: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}