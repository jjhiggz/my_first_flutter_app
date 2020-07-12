import 'package:flutter/material.dart';

void main() {
  // this is where the UI rendering work that kicks off the screen goes
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    ); // does base set up that turns base combination into a full app
  }
}
