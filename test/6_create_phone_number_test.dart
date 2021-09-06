import 'package:dart/src/6_create_phone_number.dart';
import 'package:test/test.dart';

void main() {
  group('Create phone number', () {
    test(
        'Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),
            equals('(123) 456-7890')));
    test(
        'Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]',
        () => expect(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]),
            equals('(111) 111-1111')));
    test(
        'Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),
            equals('(123) 456-7890')));
  });
}
