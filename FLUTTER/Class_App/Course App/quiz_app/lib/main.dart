

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuziApp(),
    );
  }
}

class QuziApp extends StatefulWidget {
  const QuziApp({super.key});

  @override  
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions = [
    {
      "question" : "Who is the founder of Microsoft?",
      "options" : ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer" : 1
    },
    {
      "question" : "Who is the founder of Google?",
      "options" : ["Lary Page", "Elon musk","Bill Gates","Steve Jobs"],
      "correctAnswer" : 0
    },
    {
      "question" : "Who is the founder of SpaceX?",
      "options" : ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer" : 3
    },
    {
      "question" : "Who is the founder of Apple?",
      "options" : ["Bill Gates", "Steve Jobs", "Elon musk","Lary Page"],
      "correctAnswer" : 1
    },
    {
      "question" : "Who is the founder of Meta?",
      "options" : ["Steve Jobs", "Bill Gates", "Mark Zuckerberg", "Elon musk"],
      "correctAnswer" : 2
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int currentScore = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if(selectedAnswerIndex != -1) {
      if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if(selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else{
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }
  
  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question : ${currentQuestionIndex + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),

            SizedBox(
              width: 380,
              height: 50,
              child:  Text(
                allQuestions[currentQuestionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0), 
                ),
                onPressed: () {
                  if(selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A. ${allQuestions[currentQuestionIndex]['options'][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1), 
                ),
                onPressed: () {
                  if(selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B. ${allQuestions[currentQuestionIndex]['options'][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2), 
                ),
                onPressed: () {
                  if(selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C. ${allQuestions[currentQuestionIndex]['options'][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3), 
                ),
                onPressed: () {
                  if(selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  "D. ${allQuestions[currentQuestionIndex]['options'][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(selectedAnswerIndex != -1) {
                if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
                  currentScore++;
                }
              if(currentQuestionIndex < allQuestions.length -1) {
                
                currentQuestionIndex++;
              
              } else{
                questionPage = false;
              }
              setState(() {});
              selectedAnswerIndex = -1;
            }
          },
          backgroundColor: Colors.blue[900],
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://m.media-amazon.com/images/I/71NzWlJezuL._SL1500_.jpg",
              height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Score : $currentScore/${allQuestions.length}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}