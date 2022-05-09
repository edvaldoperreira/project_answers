// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
              Text(questions[selectedQuestion]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answer,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: answer,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: answer,
              ),
            ],
          )),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
