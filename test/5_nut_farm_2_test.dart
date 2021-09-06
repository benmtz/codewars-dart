import 'package:dart/src/5_nut_farm_2.dart';
import 'package:test/test.dart';

var t1 = [
  ' o o o  ',
  ' /    / ',
  '   /    ',
  ' \\/  /  ',
  '   ||   ',
  '   ||   ',
  '   ||   '
];

void main() {
  test('return the right size', () {
    expect(shake_tree(t1).length, t1[0].length);
  });

  group('Nut', () {
    test('init', () {
      var n = Nut(x: 0, y: 0);
      expect(n.blocked, false);
      expect(n.collected, false);
      expect(n.canMove, true);
    });
    test('blocked can\'t move', () {
      var n = Nut(x: 0, y: 0);
      n.blocked = true;
      expect(n.collected, false);
      expect(n.canMove, false);
    });
    test('collected can\'t move', () {
      var n = Nut(x: 0, y: 0);
      n.collected = true;
      expect(n.blocked, false);
      expect(n.canMove, false);
    });
  });

  group('Tree', () {
    var tree = Tree(t1);

    group('Nuts', () {
      test('Creates a set of nuts with the right number', () {
        expect(tree.nuts.length, 3);
      });
      test('Nuts initial propsCheck', () {
        expect(tree.nuts.every((nut) => !nut.blocked), true);
      });
    });

    group('shake', () {
      test('move nuts til nothing can move anymore', () {
        var t = Tree(t1);
        expect(t.nuts.every((nut) => nut.canMove), true);
        t.shake();
        expect(t.nuts.every((nut) => !nut.canMove), true);
      });
    });

//    group('tree', () {
//      test('cleaning', () {
//        var tree = Tree(['  o/', '\\/ /', '.| /']);
//        expect(tree.tree, [
//          [' ', ' ', ' ', '/'],
//          ['X', 'X', ' ', '/'],
//          [' ', ' ', ' ', '/']
//        ]);
//      });
//    });
  });

  test('Bounce Left', () {
    var tree = [
      ' o o o  ',
      ' /    / ',
      '   /    ',
      '  /  /  ',
      '   ||   ',
      '   ||   ',
      '   ||   '
    ];
    var actual = shake_tree(tree);
    var expected = [1, 1, 0, 0, 1, 0, 0, 0];
    expect(actual, equals(expected));
  });

  test('Roll Left', () {
    var tree = [
      ' o      ',
      ' / o o/ ',
      ' ///    ',
      '   ///  ',
      '   ||   ',
      '   ||   ',
      '   ||   '
    ];
    var actual = shake_tree(tree);
    var expected = [2, 0, 1, 0, 0, 0, 0, 0];
    expect(actual, equals(expected));
  });

  test('Bounce Right', () {
    var bouceRightTree = [
      ' o o o  ',
      ' \\    \\ ',
      '   \\    ',
      '  \\  \\  ',
      '   ||   ',
      '   ||   ',
      '   ||   '
    ];
    var actual = shake_tree(bouceRightTree);
    var expected = [0, 0, 0, 1, 1, 0, 1, 0];
    expect(actual, equals(expected));
  });

  test('Roll Right', () {
    var tree = [
      ' o o  oo  ',
      ' \\\\\\   \\\\ ',
      '  o \\o    ',
      '  \\\\  \\   ',
      '    ||    ',
      '    ||    ',
      '    ||    '
    ];
    var actual = shake_tree(tree);
    var expected = [0, 0, 0, 0, 1, 3, 0, 1, 0, 1];
    expect(actual, equals(expected));
  });
}
