import 'package:dart/src/4_sum_of_intervals.dart';
import 'package:test/test.dart';

void main() {
  group('sort', () {
    test(
        '[[3,6],[1,5]',
        () => expect(
                [
                  [3, 6],
                  [1, 5]
                ]..sort(byStart),
                [
                  [1, 5],
                  [3, 6]
                ]));
    test(
        '[[1,4],[7,10],[3,5]]',
        () => expect(
                [
                  [1, 4],
                  [7, 10],
                  [3, 5]
                ]..sort(byStart),
                [
                  [1, 4],
                  [3, 5],
                  [7, 10]
                ]));
  });
  group('areOverlapping', () {
    test('[[1,5],[1,5]', () => expect(areOverlaping([1, 5], [1, 5]), true));
    test('[[1,6],[1,5]', () => expect(areOverlaping([1, 6], [1, 5]), true));
    test('[[1,3],[3,6]', () => expect(areOverlaping([1, 3], [3, 6]), true));
    test('[[1,3],[4,6]', () => expect(areOverlaping([1, 3], [4, 6]), false));
  });
  group('basic tests', () {
    test(
        'Testing for [[1, 5]]',
        () => expect(
            sumOfIntervals([
              [1, 5]
            ]),
            equals(4)));
    test(
        'Testing for [[1, 5], [6, 10]]',
        () => expect(
            sumOfIntervals([
              [1, 5],
              [6, 10]
            ]),
            equals(8)));
    test(
        'Testing for [[1, 5], [1, 5]]',
        () => expect(
            sumOfIntervals([
              [1, 5],
              [1, 5]
            ]),
            equals(4)));
    test(
        'Testing for [[1, 4], [7, 10]]',
        () => expect(
            sumOfIntervals([
              [1, 4],
              [7, 10]
            ]),
            equals(6)));
    test(
        'Testing for [[1, 4], [3, 5]]',
        () => expect(
            sumOfIntervals([
              [1, 4],
              [3, 5]
            ]),
            equals(4)));
    test(
        'Testing for [[1, 4], [7, 10], [3, 5]]',
        () => expect(
            sumOfIntervals([
              [1, 4],
              [7, 10],
              [3, 5]
            ]),
            equals(7)));
  });
}
