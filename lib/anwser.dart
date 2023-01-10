import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final _answerQuestion;
  const Answer(this.answer, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: _answerQuestion,
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 0, 0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.white, width: 2),
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
