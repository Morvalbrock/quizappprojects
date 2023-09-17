import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizappproject2/quizscreen.dart';
import 'package:quizappproject2/questionscreen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250.0,
            color: const Color.fromARGB(109, 255, 255, 255),
          ),
          const SizedBox(
            height: 80.0,
          ),
          Text(
            "Learn flutter the fun way !!!",
            style: GoogleFonts.lato(fontSize: 20.0, color: Colors.white),
          ),
          const SizedBox(
            height: 30.0,
          ),
          OutlinedButton.icon(
            //swithscreen fuction calling hear
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              elevation: 1.0,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
