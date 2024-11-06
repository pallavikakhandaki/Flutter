

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatefulWidget{
  const WhatsApp({super.key});

  @override  
  State createState() => _WhatsApp();
}

class _WhatsApp extends State{

  TextEditingController searchController = TextEditingController();
  bool isAllSelected = false;
  bool isUnreadSelected = false;
  bool isFavouriteSelected = false;
  bool isGroupSelected = false;

  String? name;

  final List<Map<String, dynamic>> chatList = [
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "10.08","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "09.45","profilePic":null,"status":3,"unseenCount" :1},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "08.30","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "Yesterday","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "Yesterday","profilePic":null,"status":3,"unseenCount" :4},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "12/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "12/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "09/10/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "02/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "30/09/2024","profilePic":null,"status" : 3, "unseenCount" : null},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "30/09/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "28/09/2024","profilePic":null,"status":3,"unseenCount" :1},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "26/09/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "25/09/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "25/09/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "24/08/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "24/08/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "22/08/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Mike Ross", "message": "Catch you later", "time": "10/08/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "10/08/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "10.08","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "09.45","profilePic":null,"status":3,"unseenCount" :1},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "08.30","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "Yesterday","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "Yesterday","profilePic":null,"status":3,"unseenCount" :4},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "12/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "12/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "09/10/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "02/10/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "30/09/2024","profilePic":null,"status" : 3, "unseenCount" : null},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "30/09/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "28/09/2024","profilePic":null,"status":3,"unseenCount" :1},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "26/09/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Mike Ross", "message": "Catch you later", "time": "25/09/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "25/09/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Pallavi Kakhandaki", "message": "Good Morning", "time": "24/08/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "John Doe", "message": "Hey, how’s it going?", "time": "24/08/2024","profilePic":null,"status":3,"unseenCount" :2},
    {"name": "Jane Smith", "message": "Let’s meet up!", "time": "22/08/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Mike Ross", "message": "Catch you later", "time": "10/08/2024","profilePic":null,"status":3,"unseenCount" :null},
    {"name": "Rachel Zane", "message": "Can’t wait!", "time": "10/08/2024","profilePic":null,"status":3,"unseenCount" :null},
  ];

  @override   
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_enhance_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[700],
                hintText: "Search",
                hintStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white60,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white60,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: isAllSelected ? Colors.green : Colors.grey[700],
                    ),
                    child: const Text(
                      "All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      isAllSelected = true;
                      isUnreadSelected = false;
                      isFavouriteSelected = false;
                      isGroupSelected = false;
                    });
                  },
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: isUnreadSelected ? Colors.green : Colors.grey[700],
                    ),
                    child: const Text(
                      "Unread",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      isAllSelected = false;
                      isUnreadSelected = true;
                      isFavouriteSelected = false;
                      isGroupSelected = false;
                    });
                  },
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: isFavouriteSelected ? Colors.green : Colors.grey[700],
                    ),
                    child: const Text(
                      "Favourites",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      isAllSelected = false;
                      isUnreadSelected = false;
                      isFavouriteSelected = true;
                      isGroupSelected = false;
                    });
                  },
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: isGroupSelected ? Colors.green : Colors.grey[700],
                    ),
                    child: const Text(
                      "Groups",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      isAllSelected = false;
                      isUnreadSelected = false;
                      isFavouriteSelected = false;
                      isGroupSelected = true;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 10.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: chatList[index]["profilePic"] != null ? NetworkImage(chatList[index]["profilePic"]!) : null,
                          child:chatList[index]["profilePic"] == null ? const Icon(Icons.person, color: Colors.black,size: 40,) : null,
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    chatList[index]["name"]!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        chatList[index]["time"]!,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                      if((chatList[index]["unseenCount"] ?? 0) > 0)
                                        Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            chatList[index]["unseenCount"].toString(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 0,),
                              Text(
                                chatList[index]["message"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Update',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          )
        ],
      ),
    );
  }
}