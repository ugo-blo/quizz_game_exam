import "package:flutter/material.dart";
import 'package:quizz_game/models/Quiz.dart';
import 'package:quizz_game/models/Question.dart';

class QuizPage extends StatefulWidget {
  final Quiz quiz;

  QuizPage({Key key, @required this.quiz}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState(quiz: quiz);
}

class _QuizPageState extends State<QuizPage> {
  final Quiz quiz;

  _QuizPageState({@required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(quiz.title)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (Question question in quiz.questions)
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    question.questionText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (question is TextQuestion)
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Réponse',
                      ),
                    ),
                  if (question is MultipleChoiceQuestion)
                    for (var choice in question.choices)
                      Row(
                        children: [
                          Radio(
                            value: choice.answer,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Text(choice.answer),
                        ],
                      ),
                ],
              ),
            ),
        ],
      )),
    );
  }
}
