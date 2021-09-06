import 'dart:math';

import 'package:dart/src/7_strong_numbers.dart';
import 'package:test/test.dart';

void main() {
  test('2! == 2', () => {expect(factorial(2), 2)});
  test('1! == 1', () => {expect(factorial(1), 1)});
  test('3! == 6', () => {expect(factorial(3), 6)});
  test('502! == ..',
      () => {expect(factorial(501), 4.578865951549933 * pow(10, 1413))});

  test('isStrong(1) == true', () => {expect(isStrong(1), true)});
  test('isStrong(93) == false', () => {expect(isStrong(93), false)});
  test('isStrong(145) == false', () => {expect(isStrong(145), true)});

  test('strong(1) == "STRONG!!!!"', () => {expect(strong(1), 'STRONG!!!!')});
  test('isStrong(93) == "Not Strong !!"',
      () => {expect(strong(93), 'Not Strong !!')});
}
