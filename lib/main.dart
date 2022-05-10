// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_answers/answer.dart';
import 'package:project_answers/question.dart';
import 'question.dart';
import 'answer.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  final questions = [
    {
      'text': 'What is your favorite color.',
      'answers': ['Black', 'Red', 'Blue', 'White'],
    },
    {
      'text': 'What is your favorite animal.',
      'answers': ['Lion', 'Snake', 'Cat', 'Dog'],
    },
    {
      'text': 'What is your favorite language.',
      'answers': ['C#', 'JavaScript', 'CSS', 'Flutter'],
    }
  ];

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = hasSelectedQuestion
        ? questions[_selectedQuestion]['answers'] as List<String>
        : [];

    // List<Widget> answers = [];
    // for (String answer
    //     in questions[_selectedQuestion]['answers'] as List<String>) {
    //   answers.add(Answer(answer, _answer));
    // }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: hasSelectedQuestion
              ? Column(
                  children: [
                    Question(questions[_selectedQuestion]["text"] as String),
                    ...answers.map((item) => Answer(item, _answer)).toList(),
                  ],
                )
              : null),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
