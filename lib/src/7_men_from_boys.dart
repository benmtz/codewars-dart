/// takes an unsigned int [list] and returns a new list
/// composed of increasing even numbers
/// concatenated to decreasing odd numbers.
List<int> menFromBoys(List<int> list) {
  var dedupped = list.toSet();

  var even = dedupped.where((i) => i.isEven).toList();
  var odd = dedupped.where((i) => i.isOdd).toList();

  even.sort();
  odd.sort((a, b) => a < b ? 1 : -1);

  even.addAll(odd);
  return even;
}
