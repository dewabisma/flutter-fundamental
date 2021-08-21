import 'package:flutter/material.dart';

import './question.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = ['What is your name?', 'What is your pet name?'];

  void printAnswer() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % _questions.length;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]),
            RaisedButton(
              onPressed: printAnswer,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: printAnswer,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: printAnswer,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
