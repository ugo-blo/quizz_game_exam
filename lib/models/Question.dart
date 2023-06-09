import 'package:flutter/material.dart';
import 'package:quizz_game/models/AnswerChoice.dart';

class Question {
  final String questionText;

  Question({@required this.questionText});

  String getQuestionText() {
    return questionText;
  }
}

class TextQuestion extends Question {
  final String questionAnswer;

  TextQuestion({@required String questionText, @required this.questionAnswer})
      : super(questionText: questionText);

  String getQuestionAnswer() {
    return questionAnswer;
  }

  bool isCorrect(String answer) {
    return answer.toLowerCase() == questionAnswer.toLowerCase();
  }
}

class MultipleChoiceQuestion extends Question {
  final List<AnswerChoice> choices;

  MultipleChoiceQuestion(
      {@required String questionText, @required this.choices})
      : super(questionText: questionText);

  List<AnswerChoice> getChoices() {
    return choices;
  }

  bool checkAnswer(int index) {
    return choices[index].getIsCorrect();
  }
}
