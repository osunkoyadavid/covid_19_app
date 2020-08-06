import 'package:Covid_19Test/text_model.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String get resultPhrase {
    String resultText;
    if (widget.resultScore <= 8) {
      resultText =
          'Safe! Stay safe, stay home and don\'t be worried. We will beat this virus together';
    } else if (widget.resultScore <= 12) {
      resultText =
          "You are safe. Remember to wash your hands or apply an alcohol based hand sanitizer of 70% alcohol content!";
    } else if (widget.resultScore <= 16) {
      resultText =
          'Stay safe, wash your hands regularly and avoid crowded places';
    } else if (widget.resultScore <= 20) {
      resultText =
          'You are quite ... unsafe! Err Yeah, call the Covid-19 services!';
    } else if (widget.resultScore <= 25) {
      resultText =
          'You are quite unsafe! Take a blood test and call the Covid-19 services';
    } else {
      resultText = 'I\'d rather advise you to consult your doctor immediately';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 23),
          Container(
            height: 33,
            width: 200,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Restart Covid-19 Test',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  textColor: Colors.red,
                  onPressed: widget.resetHandler,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: new TextModel(),
          ),
        ],
      ),
    );
  }
}
