/// Get the first uncommon number in term of parity in [integers]
int find(List<int> integers) {
  if (isOutlierEven(integers)) {
    return integers.firstWhere((n) => n.isEven);
  } else {
    return integers.firstWhere((n) => n.isOdd);
  }
}

/// Get the parity of the outlier of given [integers].
bool isOutlierEven(List<int> integers) {
  return integers.sublist(0, 3).where((n) => n.isEven).length <= 1;
}
