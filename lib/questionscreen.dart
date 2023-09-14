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
    return Container(
      margin: const EdgeInsets.all(40.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ...currentQuestions.getShuffledAnswers().map(
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
      ),
    );
  }
}
