import 'dart:math';

/// tv_remote gets the number of keystroke needed to type [word]
int tv_remote(String word) {
  return (Keyboard()..typeWord(word)).nbKeyPushed;
}

class Keyboard {
  var position = KeyboardPoint(0, 0);
  var nbKeyPushed = 0;
  var capsLock = false;

  Map<String, KeyboardPoint> _keyboard = Map<String, KeyboardPoint>();

  Keyboard() {
    _buildKeyboardMap();
  }

  /// Builds a keyboardMap with character as key an a Point as value.
  void _buildKeyboardMap() {
    var keyboard = [
      'abcde123',
      'fghij456',
      'klmno789',
      'pqrst.@0',
      'uvwxyz_/',
      '⬆ '
    ];
    keyboard.asMap().forEach((y, row) => row
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
    var charCode = c.codeUnitAt(0);
    if (charCode >= 65 && charCode <= 90 && !capsLock) {
      typeChar('⬆');
      capsLock = true;
    } else if (charCode >= 97 && charCode <= 122 && capsLock) {
      typeChar('⬆');
      capsLock = false;
    }
    c = c.toLowerCase();
    var key = _keyboard[c];
    nbKeyPushed += position.distanceOnKeyboardFrom(key) + 1; // +1 For OK
    position = key;
  }
}

class KeyboardPoint extends Point<int> {
  KeyboardPoint(x, y) : super(x, y);
  int distanceOnKeyboardFrom(KeyboardPoint other) {
    return (other.y - y).abs() + (other.x - x).abs();
  }
}
