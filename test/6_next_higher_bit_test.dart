import 'package:dart/src/6_next_higher_bit.dart';
import 'package:test/test.dart';

void main() {
  group('basic tests', () {
    test('Testing for 128', () => expect(nextHigher(128), equals(256)));
    test('Testing for 1', () => expect(nextHigher(1), equals(2)));
    test('Testing for 1022', () => expect(nextHigher(1022), equals(1279)));
    test('Testing for 127', () => expect(nextHigher(127), equals(191)));
    test('Testing for 1253343',
        () => expect(nextHigher(1253343), equals(1253359)));
  });
}
