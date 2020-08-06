import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This is a map
  final _questions = const [
    {
      'questionText': 'When last did you wash your hands?',
      'answers': [
        {'text': 'Now', 'score': 1},
        {'text': '5 minutes ago', 'score': 1},
        {'text': '30 minutes ago', 'score': 3},
        {'text': 'An hour ago', 'score': 4},
        {'text': 'Close to now', 'score': 4},
        {'text': 'Not close to now, far away', 'score': 6},
      ],
    },
    {
      'questionText': 'Is your temperature higher than 36.7 degrees celsius?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 1},
        {'text': 'Not sure', 'score': 3},
      ],
    },
    {
      'questionText': 'Do you have cough?',
      'answers': [
        {'text': 'Yes', 'score': 7},
        {'text': 'No', 'score': 1},
        {'text': 'Kind of', 'score': 4}
      ],
    },
    {
      'questionText': 'Are you having chest pain?',
      'answers': [
        {'text': 'Yes', 'score': 7},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you experiencing Shortness of breath?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you have diarrhea?',
      'answers': [
        {'text': 'Yes', 'score': 8},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you experiencing Shortness of breath?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you experiencing loss of taste or smell?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'No', 'score': 1},
        {'text': 'Not sure about that', 'score': 3}
      ],
    },
    {
      'questionText': 'Have you just returned from a trip in the last 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 8},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Have you come in contact with someone who returned from a trip in the last 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 8},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you have a fever?',
      'answers': [
        {'text': 'Yes', 'score': 8},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Have you been experiencing cold?',
      'answers': [
        {'text': 'Yes', 'score': 8},
        {'text': 'No', 'score': 1},
      ],
    },
  ]; // These are the questions in form of a map
  var _questionIndex = 0;
  var _totalScore = 0; // This initializes the score to 0

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  } // This controls the restart quiz button at the end of the quiz

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore = _totalScore + score; // This increases the score

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    var questions;
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Dave');
    // print(dummy);
    // dummy = [];
    // questions = []; does not work if variable is unmodifiable

    return MaterialApp(
      title: 'Covid-19 Test',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('9ja COVID-19 Test'), // This is the title
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
