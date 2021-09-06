import 'package:dart/src/7_binary_array_to_number.dart';
import 'package:test/test.dart';

void main() {
  group('Fixed tests', () {
    test('Testing for [0, 0, 0, 1]',
        () => expect(binaryArrayToNumber([0, 0, 0, 1]), equals(1)));
    test('Testing for [0, 0, 1, 0]',
        () => expect(binaryArrayToNumber([0, 0, 1, 0]), equals(2)));
    test('Testing for [1, 1, 1, 1]',
        () => expect(binaryArrayToNumber([1, 1, 1, 1]), equals(15)));
    test('Testing for [0, 1, 1, 0]',
        () => expect(binaryArrayToNumber([0, 1, 1, 0]), equals(6)));
  });
}
