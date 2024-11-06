

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State createState() => _HomePage();
}

class _HomePage extends State{
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Where do you want to travel?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 41,
                  width: 253,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 237, 248, 1),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "select Destination",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(52, 111, 249, 1),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color.fromRGBO(52, 111, 249, 1),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(52, 111, 249, 1),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Best Deals",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Sorted by lower price",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(179, 182, 187, 1),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 145,
                              width: 145,
                              color: const Color.fromRGBO(233, 237, 248, 1),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "EI Cairo",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                            ),
                                          ),
                                          Text(
                                            "Egypt",
                                             style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}