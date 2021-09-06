import 'package:dart/src/6_valid_braces.dart';
import 'package:test/test.dart';

void main() {
  group('tdd ~~', () {
    test('() is ok', () => expect(validBraces('()'), true));
    test('[] is ok', () => expect(validBraces('[]'), true));
    test('{} is ok', () => expect(validBraces('{}'), true));
    test('[(]) is ok', () => expect(validBraces('[(])'), false));
  });
}
