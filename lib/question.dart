import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            questionText,
            style: TextStyle(fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
