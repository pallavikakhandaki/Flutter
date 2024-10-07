
import 'package:flutter/material.dart';

class Program5 extends StatelessWidget{
  const Program5({super.key});

  @override  
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Image App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 5,),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://imgcdn.stablediffusionweb.com/2024/4/12/1eb2e787-2757-43c8-92ef-ce9adf2f8b93.jpg",
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaUSke8XVse2VjKXqtJNeKiLym_HWRLDVdMQ&s",
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbLIJ6Y--gzuX7b53FpLuQVC_lHH6pkOyN-Q&s",
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://imgcdn.stablediffusionweb.com/2024/2/26/00b89698-aa42-4abb-bae6-a90cf127ca13.jpg",
                ),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network("https://img.freepik.com/free-photo/colorful-flower-pattern-with-pink-orange-flower_1340-31761.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1721779200&semt=ais_user",
                ),
              ),
            ],
          ),
        ),
      );
  }

}