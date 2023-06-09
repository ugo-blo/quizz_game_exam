import 'package:flutter/material.dart';

class AnswerChoice {
  final String answer;
  final bool isCorrect;

  AnswerChoice({@required this.answer, @required this.isCorrect});

  String getAnswer() {
    return answer;
  }

  bool getIsCorrect() {
    return isCorrect;
  }
}
