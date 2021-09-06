import 'package:dart/src/6_tv_remote_shift_space_wraps.dart';
import 'package:test/test.dart';

void main() {
  test('Example', () {
    expect(tv_remote('Code Wars'), equals(49));
  });

  test('Lower', () {
    expect(tv_remote('does'), equals(16));
    expect(tv_remote('your'), equals(21));
    expect(tv_remote('solution'), equals(33));
    expect(tv_remote('work'), equals(18));
    expect(tv_remote('for'), equals(12));
    expect(tv_remote('these'), equals(27));
    expect(tv_remote('words'), equals(23));
  });

  test('Upper', () {
    expect(tv_remote('DOES'), equals(19));
    expect(tv_remote('YOUR'), equals(22));
    expect(tv_remote('SOLUTION'), equals(34));
    expect(tv_remote('WORK'), equals(19));
    expect(tv_remote('FOR'), equals(15));
    expect(tv_remote('THESE'), equals(28));
    expect(tv_remote('WORDS'), equals(24));
  });

  test('Mixed', () {
    expect(tv_remote('Does'), equals(28));
    expect(tv_remote('Your'), equals(33));
    expect(tv_remote('Solution'), equals(45));
    expect(tv_remote('Work'), equals(26));
    expect(tv_remote('For'), equals(20));
    expect(tv_remote('These'), equals(35));
    expect(tv_remote('Words'), equals(31));
  });
}
