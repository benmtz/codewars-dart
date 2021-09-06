import 'dart:math';

/// A numPrimordial is a factorial of the nth first prime numbers.
int numPrimorial(int n) {
  return getNFirstPrimes(n).fold(1, (n, m) => n * m);
}

/// Checks every odd number for primality until [n] primes are found.
List<int> getNFirstPrimes(int n) {
  if (n == 0) return [];
  var primes = [2];
  var p = 3;
  while (primes.length != n) {
    if (isPrime(p)) primes.add(p);
    p += 2;
  }
  return primes;
}

/// Checks [n] primality with [trial diviion](https://en.wikipedia.org/wiki/Trial_division).
bool isPrime(int n) {
  if (n == 1) return false;
  return Iterable<int>.generate(sqrt(n).floor(), (i) => i + 1)
      .where((n) => n > 1)
      .every((d) => n % d != 0);
}
