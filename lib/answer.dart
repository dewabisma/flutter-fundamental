import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback pressHandler;
  final String buttonText;

  Answer(this.pressHandler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: pressHandler,
        child: Text(buttonText),
        color: Colors.blue,
      ),
    );
  }
}
