
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/todo_model.dart';
import 'package:intl/intl.dart';

class TodoAppUi extends StatefulWidget{
  const TodoAppUi({super.key});

  @override  
  State createState() => _TodoAppUiState();
}

class _TodoAppUiState extends State{
  List<TodoModel> todoCards = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color> cardColorList = const[
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(237, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  List<Image> imageList = [
    Image.asset("assets/images/python.png"),
    Image.asset("assets/images/flutter.png"),
    Image.asset("assets/images/c++.png",),
    Image.asset("assets/images/dart.png"),
    Image.asset("assets/images/java.png")
  ];

  void submit(bool doEdit, [TodoModel? todoObj]){
    if(
      titleController.text.trim().isNotEmpty &&
      descriptionController.text.trim().isNotEmpty &&
      dateController.text.trim().isNotEmpty
      ) {
        if(doEdit){
          todoObj!.title = titleController.text;
          todoObj.description = descriptionController.text;
          todoObj.date = dateController.text;
        } else{
          todoCards.add(
            TodoModel(
              title: titleController.text, 
              description: descriptionController.text, 
              date: dateController.text,
            ),
          );
        }
      }
      Navigator.of(context).pop();
      clearController();
      setState(() {});
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void showBottomSheet(bool doEdit, [TodoModel? todoObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 16,
            left: 16,
            right: 16
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create To-Do",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color:const  Color.fromRGBO(0, 139, 148, 1)
                ),
              ),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  hintText: "Enter Title",
                ),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color:const  Color.fromRGBO(0, 139, 148, 1)
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  hintText: "Enter Description",
                ),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color:const  Color.fromRGBO(0, 139, 148, 1)
                ),
              ),
              TextField(
                onTap: () async{
                  DateTime? pickedDate = await showDatePicker(
                    context: context, 
                    firstDate: DateTime(2023), 
                    lastDate: DateTime(2025),
                  );
                  String formatedDate = DateFormat.yMMMd().format(pickedDate!);
                  setState(() {
                    dateController.text = formatedDate;
                  });
                },
                controller: dateController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  hintText: "Enter Date"
                ),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if(doEdit == true){
                        submit(true, todoObj);
                      } else{
                        submit(false);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color:const Color.fromRGBO(0, 139, 148, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          color:const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,)
            ],
          ),
        );
      },
    );
  }

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 360,
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),  
      backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: todoCards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 112,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: cardColorList[index % cardColorList.length],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 1)
                          ),
                          child: imageList[index],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todoCards[index].title,
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color:const  Color.fromRGBO(0, 0, 0, 1)
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              width: 280,
                              child: Text(
                                todoCards[index].description,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(84, 84, 84, 1)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Text(
                          todoCards[index].date,
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color:const Color.fromRGBO(132, 132, 132, 1)
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            titleController.text = todoCards[index].title;
                            descriptionController.text = todoCards[index].description;
                            dateController.text = todoCards[index].date;
                            showBottomSheet(true,todoCards[index]);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Color.fromRGBO(0, 139, 148, 1),
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {
                            todoCards.remove(todoCards[index]);
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.delete_outline_outlined,
                            color: Color.fromRGBO(0, 139, 148, 1),
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        backgroundColor:const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}