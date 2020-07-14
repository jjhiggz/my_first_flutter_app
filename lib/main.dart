import 'package:flutter/material.dart';

import './quiz.dart';

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
  final _questions = const [
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

  var questionIndex = 0;

  void answerQuestion(int answerNumber) {
    print(questionIndex);
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override //makes it clear that we are overriding the build widget for My app with the build wideget for our child widget

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Center(
                child: Text('you have finished'),
              ),
      ),
    ); // does base set up that turns base combination into a full app
  }
}
