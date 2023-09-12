import 'package:flutter/material.dart';
import 'package:quizappproject2/questionscreen.dart';
import 'package:quizappproject2/startscreen.dart';

class Quizscteen extends StatefulWidget {
  const Quizscteen({super.key});

  @override
  State<Quizscteen> createState() => _QuizscteenState();
}

class _QuizscteenState extends State<Quizscteen> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 72, 25, 152),
                Color.fromARGB(255, 120, 35, 216),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : QuestionScreen(),
        ),
      ),
    );
  }
}
