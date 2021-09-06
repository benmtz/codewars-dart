import 'package:dart/src/6_multiple_of_3_or_5.dart';
import 'package:test/test.dart';

void tester(int n, int exp) =>
    test('Testing for $n', () => expect(solution(n), equals(exp)));

void main() {
  group('Basic tests', () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
  });
}
