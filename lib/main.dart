import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _pickAnswer() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    print("Answer is Chosen");
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "question": "siapa namamu?",
        "answer": ["wayan", "gede", "nyoman"]
      },
      {
        "question": "berapa usiamu?",
        "answer": ["20", "22", "23", "24"]
      },
      {
        "question": "kamu gila?",
        "answer": ["mungkin", "iya", "tidak", "bisa jadi  "]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['question'] as String),
            ...(_questions[_questionIndex]['answer'] as List<String>)
                .map((jawaban) => Answer(_pickAnswer, jawaban))
                .toList()
          ],
        ),
      ),
    );
  }
}
