import 'package:flutter/material.dart';
import 'package:quizz_game/widgets/HomePage.dart';
import 'package:quizz_game/widgets/QuizPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quizz Game'),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(title: 'Quizz Game'),
      },
    );
  }
}
