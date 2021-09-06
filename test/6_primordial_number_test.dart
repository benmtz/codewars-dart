import 'package:dart/src/6_primordial_numbers.dart';
import 'package:test/test.dart';

void main() {
  group('IsPrime', () {
    test('11 is prime', () {
      expect(isPrime(11), true);
    });
    test('12 is not prime', () => expect(isPrime(12), false));
    test('4 is not prime', () => expect(isPrime(4), false));
    test('3 is prime', () => expect(isPrime(3), true));
    test('2 is prime', () => expect(isPrime(2), true));
    test('1 is not prime', () => expect(isPrime(1), false));
    test('9 is not prime', () => expect(isPrime(9), false));
  });

  group('Basic tests', () {
    test('Testing for 3', () => expect(numPrimorial(3), equals(30)));
    test('Testing for 4', () => expect(numPrimorial(4), equals(210)));
    test('Testing for 5', () => expect(numPrimorial(5), equals(2310)));
    test('Testing for 8', () => expect(numPrimorial(8), equals(9699690)));
    test('Testing for 9', () => expect(numPrimorial(9), equals(223092870)));
  });
}
