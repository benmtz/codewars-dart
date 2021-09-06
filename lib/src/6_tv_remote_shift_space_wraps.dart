import 'dart:math';

/// tv_remote gets the number of keystroke needed to type [word]
int tv_remote(String word) {
  return (Keyboard(
          config: KeyboardConfiguration(keyboard: [
    'abcde123',
    'fghij456',
    'klmno789',
    'pqrst.@0',
    'uvwxyz_/',
    '⬆ '
  ], wraps: true, caps: true))
        ..typeWord(word))
      .nbKeyPushed;
}

/// Virtual [Keyboard] managed by a [cursor]
class Keyboard {
  var cursor = KeyboardPoint(0, 0);
  var nbKeyPushed = 0;
  var capsLock = false;
  Map<String, KeyboardPoint> _keyboard = Map<String, KeyboardPoint>();
  KeyboardConfiguration config;
  int width;
  int height;

  Keyboard({this.config}) {
    var keyboard = width = config.keyboard[0].length;
    height = config.keyboard.length;
    config.keyboard.asMap().forEach((y, row) => row
        .split('')
        .asMap()
        .forEach((x, char) => _keyboard[char] = KeyboardPoint(x, y)));
  }

  /// Types a given [sentence]
  void typeWord(String sentence) {
    for (var c in sentence.split('')) {
      typeChar(c);
    }
  }

  /// Types [c] and if needed toggle [capsLock].
  void typeChar(String c) {
    if (config.caps) {
      var charCode = c.codeUnitAt(0);
      if (charCode >= 65 && charCode <= 90 && !capsLock) {
        typeChar('⬆');
        capsLock = true;
      } else if (charCode >= 97 && charCode <= 122 && capsLock) {
        typeChar('⬆');
        capsLock = false;
      }
    }
    c = c.toLowerCase();
    var key = _keyboard[c];
    nbKeyPushed += _countKeyBetweenPoints(cursor, key) + 1; // +1 for OK
    cursor = key;
  }

  // If [config.wraps] it will try to go through edges to get the lowest possible
  // path.
  int _countKeyBetweenPoints(KeyboardPoint p1, KeyboardPoint p2) {
    if (!config.wraps) {
      return p1.distanceOnKeyboardFrom(p2);
    }
    var minXDist =
        min((p1.x - p2.x).abs(), width - max(p2.x, p1.x) + min(p2.x, p1.x));
    var minYDist =
        min((p1.y - p2.y).abs(), height - max(p2.y, p1.y) + min(p2.y, p1.y));
    return minXDist + minYDist;
  }
}

/// Wrapping Keyboard flags as an object
class KeyboardConfiguration {
  bool wraps;
  bool caps;
  List<String> keyboard;
  KeyboardConfiguration({this.wraps, this.caps, this.keyboard});
}

class KeyboardPoint extends Point<int> {
  KeyboardPoint(x, y) : super(x, y);

  // This use case would be perfect for Dart extension method but... Dart 2.7.
  int distanceOnKeyboardFrom(KeyboardPoint other) {
    return (other.y - y).abs() + (other.x - x).abs();
  }
}
