class QuizQuestions {
  const QuizQuestions(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAnswers() {
    final ShuffeledList = List.of(answer);
    ShuffeledList.shuffle();
    return ShuffeledList;
  }
}
