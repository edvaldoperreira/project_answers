import 'package:flutter/material.dart';
import 'package:project_answers/question.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final void Function() onAnswer;

  Quiz(this.question, this.answers, this.onAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers.map((item) => Answer(item, onAnswer)).toList(),
      ],
    );
  }
}
