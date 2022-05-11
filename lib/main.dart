// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_answers/quiz.dart';
import 'package:project_answers/result.dart';
import 'result.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final questions = [
    {
      'text': 'What is your favorite color.',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 3},
      ],
    },
    {
      'text': 'What is your favorite animal.',
      'answers': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Snake', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 1},
      ],
    },
    {
      'text': 'What is your favorite language.',
      'answers': [
        {'text': 'C#', 'score': 3},
        {'text': 'JavaScript', 'score': 2},
        {'text': 'CSS', 'score': 6},
        {'text': 'Flutter', 'score': 9},
      ],
    }
  ];

  void _answer(int score) {
    setState(() {
      _totalScore += score;
      _selectedQuestion++;
    });
  }

  void restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < questions.length;
  }

  String get selectedQuestion {
    return questions[_selectedQuestion]["text"] as String;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestion
        ? questions[_selectedQuestion]['answers'] as List<Map<String, Object>>
        : [];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: hasSelectedQuestion
          ? Quiz(selectedQuestion, answers, _answer)
          : Result(_totalScore, restartQuiz),
    ));
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
