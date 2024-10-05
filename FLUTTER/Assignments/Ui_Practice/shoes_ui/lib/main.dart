

import 'package:flutter/material.dart';
import 'package:shoes_ui/cart.dart';

void main(){
  runApp(const Shoes());
}

class Shoes extends StatelessWidget{
  const Shoes({super.key});

  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cart(),
    );
  }
}

class shoes extends StatefulWidget{
  const shoes({super.key});

  @override
  State<shoes> createState() => _shoesState();
}

class _shoesState extends State<shoes> {
   int quantity = 0;

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Shoes",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.deepPurple[500],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.deepPurple[500],
              onPressed: (){},
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force 1 "07',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 35,
                      width: 90,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "SHOES",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 35,
                      width: 127,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "FOOTWEAR",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, eraechoing '80s construction and reflective-design Swoosh logos.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  GestureDetector(
                    child: const Icon(Icons.remove),
                    onTap: () {
                      if(quantity>0){
                        quantity--;
                      }
                      setState(() {});
                    },
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                    ),
                    child: Text(
                      "$quantity",
                      style: const TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  GestureDetector(
                    child: const Icon(Icons.add),
                    onTap: () {
                      quantity++;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              width: 350,
              height: 45,
              
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "PURCHASE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
  }
}