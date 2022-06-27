import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get result {
    var textToDisplay = "Congratulation!";

    if (resultScore > 10) textToDisplay = 'Not bad kid!';

    if (resultScore > 15) textToDisplay = "Quite the odd one, aren't cha?";

    if (resultScore > 18) textToDisplay = "Ingeniously weird one!";

    return textToDisplay;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              TextButton(onPressed: resetQuiz, child: Text('Try Again'))
            ]));
  }
}
