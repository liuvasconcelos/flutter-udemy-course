import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultText {
    return "Seu score foi: $score! Parabéns";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
           child: Text(
              resultText,
              style: TextStyle(fontSize: 28),),
           );
  }

}