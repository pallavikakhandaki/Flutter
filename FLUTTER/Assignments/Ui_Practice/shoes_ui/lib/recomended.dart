

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recomended extends StatefulWidget{
  const Recomended({super.key});

  @override  
  State createState() => _Recomended();
}

class _Recomended extends State{
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recomended",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(0, 91, 135, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:  Column(
          children: [
            const Row(
              children: [
                Text(
                  "Start a new career",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(height: 50,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 125,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 91, 135, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Data Science",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 155,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 91, 135, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Machine Learning",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 91, 135, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 130,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 91, 135, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Deep Learning",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color:  Color.fromRGBO(0, 91, 135, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/images/recomended.jpg",
                          height: 150,
                          fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Data Science",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 220,
                              child: Text(
                                "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 92,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Data Science",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Machine Learning",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
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
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/images/recomended.jpg",
                          height: 150,
                          fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "AI & ML",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 220,
                              child: Text(
                                "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 115,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Machine Learning",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 95,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Decision Tree",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
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
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/images/recomended.jpg",
                          height: 150,
                          fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Big Data",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 220,
                              child: Text(
                                "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 92,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Big Data",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Apache Spark",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
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
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/images/recomended.jpg",
                          height: 150,
                          fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Devops",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                              width: 220,
                              child: Text(
                                "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 92,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Docker",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 120,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromRGBO(0, 91, 135, 0.2),
                                    ),
                                    child: const Text(
                                      "Kubernetes",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 91, 135, 1)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}