/// wave transform [str] into a list of the same string with one character
/// uppercased on each turn going from the left to the right
List<String> wave(String str) {
  return Iterable.generate(str.length)
      .where((idx) => str[idx] != ' ') // if it's a whitespace, no turn
      .map((turn) => str.replaceRange(turn, turn + 1, str[turn].toUpperCase()))
      .toList();
}
