import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String text;
  void Function() answer;

  Answer(this.text, this.answer);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: answer,
    );
  }
}
