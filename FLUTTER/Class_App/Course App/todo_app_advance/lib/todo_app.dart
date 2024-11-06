

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_advance/TodoModel.dart';
import 'package:intl/intl.dart';

class TodoApp extends StatefulWidget{
  const TodoApp({super.key});

  @override  
  State createState() => _ToDoAppState();
}


class _ToDoAppState extends State{
  TextEditingController titleController= TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<TodoModel> listCards = [
    TodoModel(
      title: "Python",
      description:
          "Lists, Tuples, Dictionaries, Sets, Control Flow, Loops, Functions, Classes/Objects, Inheritance, Exceptions, Decorators.",
      date: "25 Sept, 2023",
    ),
    TodoModel(
      title: "Java",
      description:
          "Arrays, Methods, Object-Oriented Programming, Inheritance, Polymorphism, Abstraction, Encapsulation, Interfaces, Exception Handling, Collections Framework.",
      date: "01 Jan, 2024",
    ),
    TodoModel(
      title: "Dart",
      description:
          "Variables, Data Types, Functions, Control Flow, Loops, Lists, Sets, Maps, Object-Oriented Programming, Classes, Inheritance, Mixins, Async Programming, Futures, Streams, Error Handling.",
      date: "01 Aug, 2024",
    ),
  ];

  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void submit(bool doEdit, [TodoModel? todoObj]){
    if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
      if(doEdit){
        todoObj!.title = titleController.text;
        todoObj.description = descriptionController.text;
        todoObj.date = dateController.text;
      }else{
        listCards.add(
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

  void openBottomSheet(bool doEdit, [TodoModel? todoObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      //isDismissible: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Create To-Do",
                style: GoogleFonts.quicksand(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      color: const Color.fromRGBO(89, 57, 241, 1),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      color: const Color.fromRGBO(89, 57, 241, 1),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  TextField(
                    maxLines: 3,
                    controller: descriptionController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      color: const Color.fromRGBO(89, 57, 241, 1),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(89, 57, 241, 1), width: 0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );

                      String formattedDate =
                          DateFormat.yMMM().format(pickedDate!);

                      setState(() {
                        dateController.text = formattedDate;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  if (doEdit == true) {
                    submit(true, todoObj);
                  } else {
                    submit(false);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(89, 57, 241, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                      fontSize: 22,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }

  @override  
  Widget build(BuildContext conetxt){
    return Scaffold(
      backgroundColor:const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 55),
            child: Text(
              "Good Morning",
              style: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color:const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29),
            child: Text(
              "Pallavi",
              style: GoogleFonts.quicksand(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(top: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              child: Column(
                children: [
                  Text(
                    "CREATE TO DO LIST",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color:const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: ListView.builder(
                        itemCount: listCards.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                            child: Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 10,
                                              spreadRadius: 0,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                            )
                                          ],
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            titleController.text = listCards[index].title;
                                            descriptionController.text = listCards[index].description;
                                            dateController.text = listCards[index].date;
                                            
                                            openBottomSheet(true, listCards[index],);
                                            setState(() {});
                                          },
                                          child: const Icon(
                                            Icons.edit_outlined,
                                            size: 20,
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0,0),
                                              blurRadius: 10,
                                              spreadRadius: 0,
                                              color: Color.fromRGBO(0, 0, 0, 0.1),
                                            ),
                                          ],
                                        ),
                                        child: GestureDetector(
                                          onTap: (){
                                            //todoCards.remove(todoCards[index]);
                                            listCards.removeAt(index);
                                            setState(() {});
                                          },
                                          child: const Icon(
                                            Icons.delete_outline,
                                            size: 20,
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ), 
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(22),
                                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                      width: 90,
                                      height: 90,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                      ),
                                      child: Image.asset("assets/image.png"),
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 15,),
                                          Text(
                                            listCards[index].title,
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(0, 0, 0, 1),
                                            ),
                                          ),
                                          SizedBox(
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6),
                                              child: Text(
                                                listCards[index].description,
                                                style: GoogleFonts.inter(
                                                  fontSize: 11,
                                                  height: 1.5,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 6,),
                                          Text(
                                            listCards[index].date,
                                            style: GoogleFonts.inter(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(0, 0, 0, 0.7),
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}