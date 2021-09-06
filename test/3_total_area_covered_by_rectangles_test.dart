import 'package:dart/src/3_total_area_covered_by_rectangles.dart';
import "package:test/test.dart";

void main() {
  group('sort', () {
    test('sort is ok', () {
      expect(
          sortRectangles([
            [0, 0, 1, 1],
            [1, 1, 2, 2]
          ]),
          [
            [0, 0, 1, 1],
            [1, 1, 2, 2]
          ]);
      expect(
          sortRectangles([
            [1, 1, 2, 2],
            [0, 0, 1, 1]
          ]),
          [
            [0, 0, 1, 1],
            [1, 1, 2, 2]
          ]);
    });
  });

  test("1 rectangle (version 2)", () {
    expect(
        calculate(const [
          const [0, 4, 11, 6]
        ]),
        equals(22),
        reason: 'calculate([[0, 4, 11, 6]]]) should return 22');
  });
}
