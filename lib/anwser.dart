import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback selectHandler;
  const Answer(this.answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectHandler,
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
