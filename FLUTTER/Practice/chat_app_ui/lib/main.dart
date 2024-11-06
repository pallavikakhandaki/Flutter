
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget{
  const ChatScreen({super.key});

  @override  
  State createState() => _ChatScreen();
}

class _ChatScreen extends State{
  String? selectedMarathi;
  String? selectedHindi;

  TextEditingController keyboradText = TextEditingController();
  List<String> message = [];

  final List<String> marathiWords = ['Marathi', 'Hindi', 'English'];
  final List<String> hindiWords = ['Marathi', 'Hindi', 'English'];

  // bool isTextFieldVisible = false;

  void textField(){
    showModalBottomSheet(
      context: context, 
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        )
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: keyboradText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: "Enter your message",
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              IconButton(
                onPressed: () {
                  setState(() {
                    if(keyboradText.text.isNotEmpty){
                      message.add(keyboradText.text);
                      keyboradText.clear();
                      Navigator.of(context).pop();
                    }
                  });
                },
                icon: const Icon(
                  Icons.send,
                  color: Colors.green,
                  size: 30,
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  @override  
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/photo.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Walkie Talkie",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed:(){},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.green,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(05),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Theme.of(context).canvasColor,
                  // borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButton(
                    value: selectedMarathi,
                    hint: const Text('Select lanuage'),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMarathi = newValue;
                      });
                    },
                    items: marathiWords.map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),

                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  // const Spacer(),
                  DropdownButton(
                    value: selectedHindi,
                    hint: const Text('Select lanuage'),
                    onChanged: (String? newValue){
                      setState(() {
                        selectedHindi = newValue;
                      });
                    },
                    items: hindiWords.map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: message.length,
                  itemBuilder: (context, index){
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          message[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){
                  textField();
                }, 
                icon: const Icon(
                  Icons.keyboard,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.volume_up,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(
            Icons.mic,
            size: 40,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}