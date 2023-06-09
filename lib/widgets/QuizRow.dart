import "package:flutter/material.dart";
import 'package:quizz_game/models/Quiz.dart';
import 'package:quizz_game/widgets/QuizPage.dart';

class QuizRow extends StatelessWidget {
  final Quiz quiz;

  QuizRow({@required this.quiz});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => QuizPage(
                    quiz: quiz,
                  )),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              quiz.getTitle(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quiz.getDescription(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
