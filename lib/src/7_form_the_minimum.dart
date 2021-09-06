/// minValue take a [numberList] and return the smallest number that could be
/// formed using each digit once
int minValue(List<int> numberList) {
  var dedupedList = numberList.toSet().toList();
  dedupedList.sort();
  return int.parse(dedupedList.map((n) => n.toString()).join(''));
}
