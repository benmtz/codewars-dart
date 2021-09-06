List<num> tribonacci(List<num> signature, int n) {
  while (signature.length < n) {
    signature
        .add(signature.sublist(signature.length - 3).fold(0, (a, b) => a + b));
  }

  return signature.sublist(0, n);
}
