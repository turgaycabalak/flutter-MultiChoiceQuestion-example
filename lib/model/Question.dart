class Question {
  String questionContent;
  List<String> choices = List<String>.filled(4, "", growable: false);
  Answer answer;

  Question(this.questionContent, this.choices, this.answer);
}

enum Answer {
  A,
  B,
  C,
  D;
}