import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_Screen.dart';

import 'questions_screen.dart';
import 'start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? displayed;
  var colored = const Color.fromARGB(255, 78, 13, 151);

  @override
  void initState() {
    displayed = StartPage(switchScreen);
    super.initState();
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      displayed = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void switchScreen() {
    setState(() {
      displayed = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        displayed = ResultScreen(
          chosenAnswers: selectedAnswer,
          onRestart: restartQuiz,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colored, Color.fromARGB(255, 107, 15, 168)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: displayed,
        ),
      ),
    );
  }
}
