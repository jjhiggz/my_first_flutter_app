import 'package:flutter/material.dart';

// this is where the UI rendering work that kicks off the screen goes
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override //makes it clear that we are overriding the build widget for My app with the build wideget for our child widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    ); // does base set up that turns base combination into a full app
  }
}
