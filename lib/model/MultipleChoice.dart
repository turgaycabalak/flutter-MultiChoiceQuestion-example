import 'package:flutter/material.dart';
import 'Question.dart';

class Exam {
  int activeQuestion = 0;
  List<Icon> results = [];

  List<Question> questions = [
    Question("asagidakilerden ...1", ["ankara", "izmir", "istanbul", "yalova"],
        Answer.C),
    Question("asagidakilerden ...2", ["5", "8", "13", "26"], Answer.A),
    Question("asagidakilerden ...3", ["50", "800", "103", "2060"], Answer.B),
    Question("asagidakilerden ...4",
        ["5fds0", "80sdfs0", "10fdsf3", "20fdsfs60"], Answer.D),
    Question("asagidakilerden ...5", ["ttt", "hjgjg", "2121", "11"], Answer.C),
  ];

  void nextQuestion() {
    (questions.length - 1) > activeQuestion
        ? activeQuestion++
        : activeQuestion = 0;
  }

  String getQuestion() {
    return questions[activeQuestion].questionContent;
  }

  String getChoice(int choiceIndex) {
    return questions[activeQuestion].choices[choiceIndex];
  }

  bool checkAnswer(Answer answer) {
    return questions[activeQuestion].answer == answer;
  }

  void printAnswer(Answer answer) {
    checkAnswer(answer)
        ? results.add(Icon(Icons.thumb_up))
        : results.add(Icon(Icons.thumb_down));

    nextQuestion();
  }
}



