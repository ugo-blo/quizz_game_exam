import 'package:flutter/material.dart';
import 'package:quizz_game/models/Question.dart';

class Quiz {
  final List<Question> questions;
  final String title;
  final String description;
  final String type;

  Quiz(
      {@required this.questions,
      @required this.title,
      @required this.description,
      @required this.type});

  List<Question> getQuestions() {
    return questions;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }

  String getType() {
    return type;
  }
}
