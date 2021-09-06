import 'dart:math';

Function cutLog = (List<int> logPrices, int n) {
  var maxs = Map.fromIterable(Iterable.generate(n + 1),
      key: (i) => i, value: (i) => logPrices[i]);
  for (var j = 1; j <= n; j++) {
    for (var i = j; i >= 1; i--) {
      maxs[j] = max(maxs[j], maxs[i] + maxs[j - i]);
    }
  }
  return maxs[n];
};
