import 'package:flutter/material.dart';
import 'package:questions_project/quiz.dart';
import 'package:questions_project/result.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalPontuation = 0;
  final _questions = const [
    {
      "text": "Qual é a sua cor favorita?",
      "answers": [
        { "text": "Preto", "pontuation": 10 },
        { "text": "Vermelho", "pontuation": 5 },
        { "text": "Verde", "pontuation": 3 },
        { "text": "Branco", "pontuation": 1 },
      ],
    },
    {
      "text": "Qual é o seu animal favorito?",
      "answers": [
        { "text": "Coelho", "pontuation": 10 },
        { "text": "Cobra", "pontuation": 5 },
        { "text": "Elefante", "pontuation": 3 },
        { "text": "Leão", "pontuation": 1 },
      ],
    },
    {
      "text": "Qual é o seu instrutor favorito?",
      "answers": [
        { "text": "Maria", "pontuation": 10 },
        { "text": "João", "pontuation": 5 },
        { "text": "Léo", "pontuation": 3 },
        { "text": "Pedro", "pontuation": 1 },
      ],
    },
  ];
  void _answer(int currentPontuation) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalPontuation += currentPontuation;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalPontuation = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                onSelection: _answer,
                selectedQuestion: _selectedQuestion,
              )
            : Result(_totalPontuation, _resetQuiz),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
