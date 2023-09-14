import 'package:flutter/material.dart';
import 'package:quizappproject2/answer_button.dart';
import 'package:quizappproject2/models/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ...currentQuestions.answers.map(
            (answers) {
              return AnswerButton(answerText: answers, onTap: () {});
            },
          ),
          // AnswerButton(
          //   answerText: currentQuestions.answers[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestions.answers[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestions.answers[3],
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
