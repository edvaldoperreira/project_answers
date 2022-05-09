// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_answers/answer.dart';
import 'package:project_answers/question.dart';
import 'question.dart';
import 'answer.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      "What is your favorite color.",
      "What is your favorite animal."
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: Column(
            children: [
              Question(questions[_selectedQuestion]),
              Answer("Answer 1", _answer),
              Answer("Answer 2", _answer),
              Answer("Answer 3", _answer),
            ],
          )),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
