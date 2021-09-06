import 'dart:math';

int binaryArrayToNumber(List<int> arr) {
  var rra = arr.reversed.toList(); // :D
  return Iterable.generate(arr.length)
      .map((n) => rra[n] * pow(2, n))
      .fold(0, (a, b) => a + b);
}
