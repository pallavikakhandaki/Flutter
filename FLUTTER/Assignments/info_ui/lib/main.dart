
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override  
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatefulWidget{
  const InfoPage({super.key});

  @override  
  State createState() => _InfoPageState();
}

class _InfoPageState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController cmpController = TextEditingController();

  String? name;
  String? cmpName;

  List<Map> infoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              controller: cmpController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              decoration: const InputDecoration(
                hintText: "Company Name",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.blue[900],
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              onTap: () {
                infoList.add({
                  "name" : nameController.text,
                  "cmpName" : cmpController.text,
                },
              ); 
              nameController.clear();
              cmpController.clear();
              setState(() {});
              },
            ),
            const SizedBox(height: 10,),
            ListView.builder(
              itemCount: infoList.length,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${index+1}) Name : ${infoList[index]["name"]}",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Company Name : ${infoList[index]["cmpName"]}",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

