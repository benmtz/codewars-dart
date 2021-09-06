// got weird stack overflows with recurse
int factorial(n) {
//  if (n == 1) {
//    return 1;
//  }
//  return n * factorial(n - 1);
  var fact = 1;
  for (var i = 1; i <= n; i++) {
    fact = fact * i;
  }
  return fact;
}

bool isStrong(n) {
  return n ==
      n
          .toString()
          .split('')
          .map((n) => factorial(int.parse(n)))
          .reduce((current, next) => current + next);
}

String strong(n) {
  if (isStrong(n)) {
    return 'STRONG!!!!';
  } else {
    return 'Not Strong !!';
  }
}
