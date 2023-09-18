import 'package:flutter/material.dart';
import 'package:quizappproject2/models/data/questions.dart';
import 'package:quizappproject2/questionscreen.dart';
import 'package:quizappproject2/startscreen.dart';

class Quizscteen extends StatefulWidget {
  const Quizscteen({super.key});

  @override
  State<Quizscteen> createState() => _QuizscteenState();
}

class _QuizscteenState extends State<Quizscteen> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
//list length error fixing
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenwidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
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
