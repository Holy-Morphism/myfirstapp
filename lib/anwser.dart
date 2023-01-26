import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final VoidCallback _selectHandler;
  const Answer(this._answer, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: _selectHandler,
        child: Text(
          _answer,
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
