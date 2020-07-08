import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() onResetQuiz;

  Result(this.score, this.onResetQuiz);

  String get resultText {
    return "Seu score foi: $score! Parabéns";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            "Reiniciar?",
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: onResetQuiz,
        ),
      ],
    );
  }
}
