import 'dart:math';

/// tv_remote gets the number of keystroke needed to type [word]
int tv_remote(String word) {
  var keyboard = buildKeyboardMap();
  var position = KeyboardPoint(0, 0);
  var keyCount = 0;
  for (var c in word.split('')) {
    keyCount += position.distanceOnKeyboardFrom(keyboard[c]) + 1; // +1 For OK
    position = keyboard[c];
  }
  return keyCount;
}

/// Builds a keyboardMap with character as key an a Point as value.
Map<String, Point> buildKeyboardMap() {
  var keyboardMap = Map<String, KeyboardPoint>();
  var keyboard = ['abcde123', 'fghij456', 'klmno789', 'pqrst.@0', 'uvwxyz_/'];
  keyboard.asMap().forEach((y, row) => row
      .split('')
      .asMap()
      .forEach((x, char) => keyboardMap[char] = KeyboardPoint(x, y)));
  return keyboardMap;
}

class KeyboardPoint extends Point<int> {
  KeyboardPoint(x, y) : super(x, y);
  int distanceOnKeyboardFrom(KeyboardPoint other) {
    return (other.y - y).abs() + (other.x - x).abs();
  }
}
