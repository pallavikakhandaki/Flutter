

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Ingrident extends StatefulWidget{
  const Ingrident({super.key});

  @override  
  State createState() => _IngridentState();
}

class _IngridentState extends State{

  bool isIngridientSelected = true;
  bool isProcedureSelected = false;

  Widget procedure(){
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 1",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Season the chicken with salt, pepper, and spicy seasoning")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 2",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Set up three bowls - one with beaten egg, and one with breadcrumbs.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 3",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Dip the seasoned chicken in flour, then egg, and finally coat it with breadcrumbs.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 4",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Heat oil in a skillet and fry the chicken on medium heat for 4-5 minutes per side until golden and crispy. Drain on a paper towel.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Fry the frozen french fries according to package instructions. Season with salt and spicy seasoning if desired.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 6",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("In a small bowl, mix mayonnaise and hot sauce to make a spicy mayo spread.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 7",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Spread spicy mayo on the inside of each burger bun.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Place lettuce, a slice of tomato, and the fried chicken on the bun. Add a cheese slice if desired.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 9",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Add more spicy mayo on the top bun, then place it on the sandwich.")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Step 10",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Serve the spicy chicken burger with a side of french fries.")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ingrident(){
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green[200],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/tomato.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Tomatos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "500g",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green[200],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/cabbage.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Cabbage",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "500g",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green[200],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/green_onion.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Green Onion",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "500g",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green[200],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/tomato.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Tomatos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "500g",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
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

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value){
                case 'Share':
                  break;
                case 'Rate' :
                  break;
                case 'Review':
                  break;
                case 'Unsave':
                  break;
              }
            },
            itemBuilder: (BuildContext context){
              return [
                const PopupMenuItem(
                  value: "Share",
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.black),
                      SizedBox(width: 10,),
                      Text("Share"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Rate",
                  child: Row(
                    children: [
                      Icon(Icons.star_rate, color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Rate Review"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Review",
                  child: Row(
                    children: [
                      Icon(Icons.rate_review, color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Review"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Unsave",
                  child: Row(
                    children: [
                      Icon(Icons.bookmark_remove, color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Unsave"),
                    ],
                  ),
                ),
              ];
            }
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                    children:[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                        color: Colors.amber,
                        child: Image.asset(
                          "assets/images/image.webp",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        ),
                      ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 9,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[800],
                              size: 16,
                            ),
                            const SizedBox(width: 4,),
                            const Text(
                              "4.0",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 9,
                      right: 10,
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          SizedBox( width: 10,),
                          Text(
                            "20 min",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          SizedBox( width: 10,),
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 150,
                  child: Text(
                    "Spicy chicken burger with French Fries",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/chef.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Laura wilson",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Pune")
                  ],
                ),
                const SizedBox(width: 60,),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[900],
                  ),
                  child: const Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isIngridientSelected = true;
                      isProcedureSelected = false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isIngridientSelected ? Colors.green[900] : Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        "Ingrident",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: isIngridientSelected ? Colors.white : Colors.green[900]
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isIngridientSelected = false;
                      isProcedureSelected = true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isProcedureSelected ? Colors.green[900] : Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        "Procedure",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: isProcedureSelected ? Colors.white : Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            isIngridientSelected ? ingrident() : procedure(),
          ],
        ),
      ),
    );
  }
}