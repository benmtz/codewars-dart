List<int> shake_tree(var tree) {
  return (Tree(tree)..shake()).nutsOnTheGround;
}

class Tree {
  Set<Nut> nuts = {}; // Dart 2.2+
  //  Set<Nut> nuts = Set();

  List<List<String>> tree;

  /// Gets non blocked [nuts] grouped by x position
  List<int> get nutsOnTheGround {
    var ground = List.filled(tree[0].length, 0);
    nuts
      ..removeWhere((nut) => nut.blocked)
      ..forEach((nut) => ground[nut.x]++);
    return ground;
  }

  /// Moves [nuts] on the [tree] until every nut is
  /// blocked or collected
  void shake() {
    for (var nut in nuts) {
      while (nut.canMove) {
        var treeCell = tree[nut.y][nut.x];
        if (nut.y == tree.length - 1) nut.collected = true;
        if (treeCell == 'X') {
          nut.blocked = true;
        } else if (treeCell == ' ') {
          nut.fall();
        } else if (treeCell == '/') {
          nut.rollLeft();
        } else if (treeCell == '\\') nut.rollRight();
      }
    }
  }

  /// Given a [treeDef] build an internal simpler [tree]
  Tree(List<String> treeDef) {
    tree = List.generate(
        treeDef.length, (_) => List.filled(treeDef[0].length, ' '));
    treeDef.asMap().forEach((y, row) {
      row
        ..split('').asMap().forEach((x, cell) {
          if (cell == 'o') {
            nuts.add(Nut(x: x, y: y));
          }
          if ([' ', '.', '|', 'o'].contains(cell)) {
            tree[y][x] = ' ';
          } else if (cell == '\\') {
            tree[y][x] = treeDef[y][x + 1] == '/' ? 'X' : '\\';
          } else if (cell == '/') {
            tree[y][x] = treeDef[y][x - 1] == '\\' ? 'X' : '/';
          }
        });
    });
  }
}

class Nut {
  int x, y;
  bool blocked = false;
  bool collected = false;

  bool get canMove => !(blocked || collected);

  Nut({this.x, this.y});

  void rollRight() => x = x + 1;
  void rollLeft() => x = x - 1;
  void fall() => y = y + 1;
}
