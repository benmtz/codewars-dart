import 'package:dart/src/6_schrodinger_boolean.dart';
import 'package:test/test.dart';

void main() {
  group('basic tests', () {
    test('== true', () => expect(omnibool == true, isTrue));
    test('== false', () => expect(omnibool == false, isTrue));
  });
}
