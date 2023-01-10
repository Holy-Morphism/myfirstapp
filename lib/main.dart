import 'package:flutter/material.dart';

import './question.dart';
import './anwser.dart';

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
  _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  List<String> Questions = [
    'Whats\'s your favourite color?',
    'Whats\'s your favourite animal?',
    'How many genders are there?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NUCENCE'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Question(Questions.elementAt(_questionIndex)),
            Answer('ans 1', _answerQuestion),
            Answer('ans 2', _answerQuestion),
            Answer('ans 3', _answerQuestion),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
