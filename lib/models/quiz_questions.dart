class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

// Method should return string of values
  List<String> getShuffledAnswer() {
    // List is a Class buildt into Dart
    // .of creates a new list based on already existing list
    // copy the answers list and store it
    final shuffledList = List.of(answers);
    // Shuffles the list
    shuffledList.shuffle();
    // Then return it;
    return shuffledList;
  }
}
