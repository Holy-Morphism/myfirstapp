import 'package:flutter/material.dart';

import './question.dart';
import './anwser.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questiontext'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(answers['text'] as String,
              () => answerQuestion(answers['score']));
        }).toList()
      ],
    );
  }
}
