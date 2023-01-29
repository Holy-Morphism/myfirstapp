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
  var _totalscore = 0;
  final questions = const [
    {
      'questiontext': 'Whats\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Black', 'score': 4}
      ]
    },
    {
      'questiontext': 'Whats\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 2},
        {'text': 'Blue Whale', 'score': 3},
        {'text': 'A bad Bitch', 'score': 69}
      ]
    },
    {
      'questiontext': 'How many genders are there?',
      'answers': [
        {'text': '1(Females don\'t count)', 'score': 100},
        {'text': '2', 'score': 2},
        {'text': '82', 'score': 3},
        {'text': 'Don\'t know', 'score': 0}
      ]
    }
  ];
  _answerQuestion(int score) {
    _totalscore += score;
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
          backgroundColor: Colors.blue,
        ),
        body: (_questionIndex < questions.length)
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(),
      ),
    );
  }
}
