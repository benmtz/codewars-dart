String spinWords(String words) {
  return words.splitMapJoin(' ',
      onMatch: (match) => ' ',
      onNonMatch: (word) {
        if (word.length > 4) {
          return word.split('').reversed.join();
        }
        return word;
      });
}
