import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text = 'There are no more questions for you!';
  final int score;
  final void Function() onRestartQuiz;

  Result(this.score, this.onRestartQuiz);

  String get textResult {
    if (score < 8) {
      return "Congratulations!";
    } else if (score < 12) {
      return "You are good!";
    } else if (score < 16) {
      return "Impressive!";
    } else {
      return "Jedi level!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '$textResult $text',
            style: const TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: onRestartQuiz,
          child: const Text(
            'Restart Quiz',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
