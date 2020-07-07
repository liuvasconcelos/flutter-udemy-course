import 'package:flutter/material.dart';
import 'package:questions_project/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) onSelection;

  Quiz({
    @required this.questions,
    @required this.selectedQuestion,
    @required this.onSelection,
  });

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        hasSelectedQuestion ? questions[selectedQuestion]["answers"] : null;
    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]["text"]),
        ...answers.map((t) => Answer(t["text"], () => onSelection(t["pontuation"]) )).toList(),
      ],
    );
  }
}
