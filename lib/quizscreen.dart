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
    Widget screenwidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenwidget = const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 56, 16, 124),
                Color.fromARGB(255, 92, 27, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenwidget,
        ),
      ),
    );
  }
}
