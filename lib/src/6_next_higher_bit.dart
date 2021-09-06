int nextHigher(int n) {
  var challenge = countBase2Ones(n.toRadixString(2));
  var m = n + 1;
  while (countBase2Ones(m.toRadixString(2)) != challenge) {
    m++;
  }
  return m;
}

int countBase2Ones(String s1) {
  return s1.split('').where((element) => element == '1').length;
}
