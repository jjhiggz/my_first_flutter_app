import 'package:flutter/material.dart';

// this is where the UI rendering work that kicks off the screen goes
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override //makes it clear that we are overriding the build widget for My app with the build wideget for our child widget
  Widget build(BuildContext context) {
    void answerQuestion(int answerNumber) {
      print(answerNumber);
    }

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
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(2),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(3),
            ),
          ],
        ),
      ),
    ); // does base set up that turns base combination into a full app
  }
}
