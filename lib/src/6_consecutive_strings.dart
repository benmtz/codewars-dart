/// Get the longest concatenation of [consecutiveWords] in [words].
String longestConsec(words, int consecutiveWords) {
  if (consecutiveWords <= 0) return '';
  var consecWords = wordsToConsec(words, consecutiveWords);
  return consecWords.firstWhere((word) => isLongestWord(word, consecWords),
      orElse: () => '');
}

/// Arrange given [words] to be [consecutiveWords] concatenations.
List<String> wordsToConsec(words, consecutiveWords) {
  return List<String>.from(
      Iterable.generate(words.length - consecutiveWords + 1)
          .map((pos) => words.sublist(pos, pos + consecutiveWords).join('')));
}

/// Checks if [word]'s length is greater or equal to the longest word in [words].
bool isLongestWord(String word, List<String> words) {
  return words.every((w) => w.length <= word.length);
}
