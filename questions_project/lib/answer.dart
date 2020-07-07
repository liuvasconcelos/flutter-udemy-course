import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() onSelection;

  Answer(this.answerText, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: onSelection,
      ),
    );
  }
}
