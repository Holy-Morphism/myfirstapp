import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final questions = const [
    {
      'questiontext': 'Whats\'s your favourite color?',
      'answers': ['Red', 'Blue', "Green", 'Black']
    },
    {
      'questiontext': 'Whats\'s your favourite animal?',
      'answers': ['Red', 'Blue', "Green", 'Black']
    },
    {
      'questiontext': 'How many genders are there,Tell me?',
      'answers': ['Red', 'Blue', "Green", 'Black']
    }
  ];
  _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NUCENCE'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: (_questionIndex < questions.length)
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
