import 'package:flutter/material.dart';
import 'package:quizz_game/widgets/QuizRow.dart';
import 'package:quizz_game/models/Quiz.dart';
import 'package:quizz_game/models/Question.dart';
import 'package:quizz_game/models/AnswerChoice.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final dynamic title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final quiz = <Quiz>[
    Quiz(
        questions: [
          TextQuestion(
              questionText:
                  "Quel est le nom de la personne qui incarne Harry Potter ?",
              questionAnswer: "Daniel Radcliffe"),
          TextQuestion(
              questionText:
                  "Quel est le nom de la personne qui incarne Hermione Granger ?",
              questionAnswer: "Emma Watson"),
          TextQuestion(
              questionText:
                  "Quel est le nom de la personne qui incarne Ron Weasley ?",
              questionAnswer: "Rupert Grint"),
        ],
        title: "Quiz Harry Potter",
        description: "Quiz sur la saga Harry Potter",
        type: "text"),
    Quiz(
        questions: [
          MultipleChoiceQuestion(
              questionText:
                  "Quel est le nom de la personne qui incarne Harry Potter ?",
              choices: [
                AnswerChoice(answer: "Daniel Radcliffe", isCorrect: true),
                AnswerChoice(answer: "Emma Watson", isCorrect: false),
                AnswerChoice(answer: "Rupert Grint", isCorrect: false),
              ]),
        ],
        title: "Quiz Harry Potter",
        description: "Quiz sur la saga Harry Potter",
        type: "multiple"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: quiz.length,
                itemBuilder: (BuildContext context, int index) {
                  Quiz quizItem = quiz[index];
                  return QuizRow(quiz: quizItem);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
