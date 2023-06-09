import 'package:flutter/material.dart';
import 'package:quizz_game/models/Question.dart';

class Quiz {
  final List<Question> questions;
  final String title;
  final String description;

  Quiz(
      {@required this.questions,
      @required this.title,
      @required this.description});

  List<Question> getQuestions() {
    return questions;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}
