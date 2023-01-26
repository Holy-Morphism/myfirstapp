import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questiontext;
  Question(this._questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _questiontext,
        style: TextStyle(color: Colors.white, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
