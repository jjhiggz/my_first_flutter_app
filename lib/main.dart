import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// this is where the UI rendering work that kicks off the screen goes
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(int answerNumber) {
    print(_questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override //makes it clear that we are overriding the build widget for My app with the build wideget for our child widget

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['duck', 'dog', 'HEROG', 'Fucker'],
      },
      {
        'questionText': 'What\'s your favorite peron?',
        'answers': ['jon', 'jonathan', 'HIGGZ', 'HUMBLEGAWWD'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    ); // does base set up that turns base combination into a full app
  }
}
