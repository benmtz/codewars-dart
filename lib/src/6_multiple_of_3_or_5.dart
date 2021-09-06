/// get the sum of every number lower than an a natural number [n]
/// divisible by 3 or 5
int solution(int n) {
  return Iterable.generate(n)
      .where((n) => n % 3 == 0 || n % 5 == 0)
      .fold(0, (a, b) => a + b);
}
