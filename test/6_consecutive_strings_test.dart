import 'package:dart/src/6_consecutive_strings.dart';
import 'package:test/test.dart';

void testing(strarr, k, exp) {
  test('$k - ${strarr.join(' ')}', () {
    expect(longestConsec(strarr, k), equals(exp));
  });
}

void main() {
  group('isLongestWord', () {
    test(
        'abigailtheta & ["plop", "plip", "abigailtheta"]',
        () => expect(
            isLongestWord('abigailtheta',
                ['plop', 'plip', 'abigailtheta', 'zoneabigial']),
            true));
    test(
        'plop',
        () => expect(
            isLongestWord(
                'zoneabigail', ['plop', 'plip', 'abigailtheta', 'zoneabigial']),
            false));
  });

  group('consecutiveWords', () {
    test('["a", "b", "plop"], 2',
        () => expect(wordsToConsec(['a', 'b', 'plop'], 2), ['ab', 'bplop']));
    test(
        '["zone", "abigail", "theta", "form", "libe", "zas"]',
        () => expect(
                wordsToConsec(
                    ['zone', 'abigail', 'theta', 'form', 'libe', 'zas'], 2),
                [
                  'zoneabigail',
                  'abigailtheta',
                  'thetaform',
                  'formlibe',
                  'libezas'
                ]));
  });

  group('Basic tests', () {
    testing(
        ['zone', 'abigail', 'theta', 'form', 'libe', 'zas'], 2, 'abigailtheta');
    testing([
      'ejjjjmmtthh',
      'zxxuueeg',
      'aanlljrrrxx',
      'dqqqaaabbb',
      'oocccffuucccjjjkkkjyyyeehh'
    ], 1, 'oocccffuucccjjjkkkjyyyeehh');
    testing([], 3, '');
    testing([
      'itvayloxrp',
      'wkppqsztdkmvcuwvereiupccauycnjutlv',
      'vweqilsfytihvrzlaodfixoyxvyuyvgpck'
    ], 2,
        'wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck');
    testing(['wlwsasphmxx', 'owiaxujylentrklctozmymu', 'wpgozvxxiu'], 2,
        'wlwsasphmxxowiaxujylentrklctozmymu');
    testing(['zone', 'abigail', 'theta', 'form', 'libe', 'zas'], -2, '');
    testing(['it', 'wkppv', 'ixoyx', '3452', 'zzzzzzzzzzzz'], 3,
        'ixoyx3452zzzzzzzzzzzz');
    testing(['it', 'wkppv', 'ixoyx', '3452', 'zzzzzzzzzzzz'], 15, '');
    testing(['it', 'wkppv', 'ixoyx', '3452', 'zzzzzzzzzzzz'], 0, '');
  });
}
