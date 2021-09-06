import 'package:dart/src/5_rgb_to_hex.dart';
import 'package:test/test.dart';

void main() {
  group('Basic tests', () {
    test('FFFFFF', () => expect(rgb(255, 255, 255), 'FFFFFF'));
    test('FFFFFF', () => expect(rgb(255, 255, 300), 'FFFFFF'));
    test('', () => expect(rgb(0, 0, 0), '000000'));
    test('', () => expect(rgb(148, 0, 211), '9400D3'));
    test('', () => expect(rgb(148, -20, 211), '9400D3'));
    test('', () => expect(rgb(144, 195, 212), '90C3D4'));
    test('', () => expect(rgb(212, 53, 12), 'D4350C'));
  });
}
