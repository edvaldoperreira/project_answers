// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_answers/question.dart';
import 'question.dart';

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
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: _answer,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: _answer,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: _answer,
              ),
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
