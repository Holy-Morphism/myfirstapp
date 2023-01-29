import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback _resetQuiz;
  const Result(this._totalScore, this._resetQuiz);
  String get resultPhrase {
    String resultText;
    if (_totalScore < 10) {
      resultText = 'You\'ve done really well';
    } else if (_totalScore < 20) {
      resultText = 'Well you\'ve tried but it wasn\'t enough';
    } else if (_totalScore < 50) {
      resultText = 'NAH it\'s really bad';
    } else {
      resultText = 'You sir,are a great Disappointment';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: _resetQuiz, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
