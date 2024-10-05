
import 'package:flutter/material.dart';

class Cart extends StatefulWidget{
  const Cart({super.key});

  @override
  State createState() => _Cart();
}

class _Cart extends State{
  int quantity1 = 0;
  int quantity2 = 0;
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My cart",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.deepPurple[900],
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/shoes.jpg"),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Nike Shoes",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                          width: 195,
                          child: Text(
                            "With iconic style and legendary comfort, on repeat.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$570.00",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(width: 20,),
                            GestureDetector(
                              child: const Icon(Icons.remove),
                              onTap: () {
                                if(quantity1>0){
                                  quantity1--;
                                }
                                setState(() {});
                              },
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(Radius.circular(2)),
                              ),
                              child: Text(
                                "$quantity1",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: const Icon(Icons.add),
                              onTap: () {
                                quantity1++;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/shoes.jpg"),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Nike Shoes",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                          width: 195,
                          child: Text(
                            "With iconic style and legendary comfort, on repeat.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$77.00",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(width: 30,),
                            GestureDetector(
                              child: const Icon(Icons.remove),
                              onTap: () {
                                if(quantity2>0){
                                  quantity2--;
                                  setState(() {});
                                }
                              },
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(Radius.circular(2)),
                              ),
                              child: Text(
                                "$quantity2",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              child: const Icon(Icons.add),
                              onTap: () {
                                quantity2++;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 230,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "\$800.00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Fee:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "\$5.00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discount:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "40%",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.deepPurpleAccent,
              ),
              
              child: const Text(
                "Checkout for ₹480.00",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}