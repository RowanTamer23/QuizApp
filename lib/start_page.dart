import 'package:flutter/material.dart';

var colored = Color.fromARGB(255, 148, 14, 225);

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromRGBO(255, 255, 255, 0.6),
          ),

          SizedBox(height: 60),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: Icon(Icons.start, color: Colors.white),
            label: Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(253, 253, 253, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
