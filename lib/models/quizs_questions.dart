class QuizQuestions {
  QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //shiffed a answer but curret list dont change
    //so list.of() copy the list first than using shuffled
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
