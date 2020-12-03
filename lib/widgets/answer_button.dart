import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    this.answerText,
    this.selectHandler,
  });
  final String answerText;
  final Function selectHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectHandler,
      child: Container(
        height: 80.0,
        child: Center(
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        margin: EdgeInsets.all(1.0),
        decoration: BoxDecoration(color: Colors.deepOrange),
      ),
    );
  }
}