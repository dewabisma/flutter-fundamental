import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> _questions;
  final int _questionIndex;
  final Function _pickAnswer;

  Quiz(this._questions, this._questionIndex, this._pickAnswer);

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(_questions[_questionIndex]['question'] as String),
      ...(_questions[_questionIndex]['answer'] as List<Map>)
          .map((answer) =>
              Answer(() => _pickAnswer(answer['scores']), answer["options"]))
          .toList()
    ]);
  }
}
