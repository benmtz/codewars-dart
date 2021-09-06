import 'package:dart/src/6_tv_remote_shift_space.dart';
import 'package:test/test.dart';

void main() {
  test('Example', () {
    expect(tv_remote('Code Wars'), equals(69));
  });

  test('Lower', () {
    expect(tv_remote('does'), equals(16));
    expect(tv_remote('your'), equals(23));
    expect(tv_remote('solution'), equals(33));
    expect(tv_remote('work'), equals(20));
    expect(tv_remote('for'), equals(12));
    expect(tv_remote('these'), equals(27));
    expect(tv_remote('words'), equals(25));
  });

  test('Upper', () {
    expect(tv_remote('DOES'), equals(27));
    expect(tv_remote('YOUR'), equals(26));
    expect(tv_remote('SOLUTION'), equals(38));
    expect(tv_remote('WORK'), equals(23));
    expect(tv_remote('FOR'), equals(21));
    expect(tv_remote('THESE'), equals(32));
    expect(tv_remote('WORDS'), equals(28));
  });

  test('Mix', () {
    expect(tv_remote('Does'), equals(40));
    expect(tv_remote('Your'), equals(37));
    expect(tv_remote('Solution'), equals(49));
    expect(tv_remote('Work'), equals(30));
    expect(tv_remote('For'), equals(28));
    expect(tv_remote('These'), equals(41));
    expect(tv_remote('Words'), equals(35));
  });
}
