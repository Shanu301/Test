import 'package:flutter/material.dart';
import 'view/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        title: 'TestAssignment',
        debugShowCheckedModeBanner: false,

        home: WelcomeScreen()

      );
  }
}
