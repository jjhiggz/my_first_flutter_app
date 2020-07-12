import 'package:flutter/material.dart';

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
      'What\'s your favorite color?',
      'What\'s your favorite animal>'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => _answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _answerQuestion(2),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => _answerQuestion(3),
            ),
          ],
        ),
      ),
    ); // does base set up that turns base combination into a full app
  }
}
