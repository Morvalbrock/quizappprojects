import 'package:flutter/material.dart';
import 'package:quizappproject2/questionscreen.dart';
import 'package:quizappproject2/startscreen.dart';

class Quizscteen extends StatefulWidget {
  const Quizscteen({super.key});

  @override
  State<Quizscteen> createState() => _QuizscteenState();
}

class _QuizscteenState extends State<Quizscteen> {
  Widget? activeScreen;
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
// activeScreen value was change so this was called in setstate
//setstate usage build method was re-execute the build method
    setState(() {
      activeScreen = const QuestionScreen();
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
          // starting time child value was Startscreen than run a
          //switchscreen than child value was change
          child: activeScreen,
        ),
      ),
    );
  }
}
