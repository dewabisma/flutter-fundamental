import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static final _questions = const [
    {
      "question": "siapa namamu?",
      "answer": [
        {"options": "wayan", "scores": 2},
        {"options": "gede", "scores": 8},
        {"options": "putu", "scores": 5}
      ]
    },
    {
      "question": "berapa usiamu?",
      "answer": [
        {"options": "22", "scores": 2},
        {"options": "23", "scores": 8},
        {"options": "19", "scores": 5},
        {"options": "17", "scores": 10}
      ]
    },
    {
      "question": "kamu gila?",
      "answer": [
        {"options": "iya", "scores": 2},
        {"options": "mungkin", "scores": 8},
        {"options": "bisa jadi", "scores": 5},
        {"options": "tidak", "scores": 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _score = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _pickAnswer(int questionScore) {
    setState(() {
      _questionIndex++;
    });

    _score += questionScore;
    print(_score);
    print(_questionIndex);
    print(_questions.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _pickAnswer)
            : Result(_score, _resetQuiz),
      ),
    );
  }
}
