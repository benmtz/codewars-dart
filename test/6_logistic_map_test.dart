//Our AAA company is in need of some software to help with logistics: you will
//be given the width and height of a map, a list of x coordinates and a list of
//y coordinates of the supply points, starting to count from the top left corner
//of the map as 0.
//
//Your goal is to return a two dimensional array/list with every item having the
//value of the distance of the square itself from the closest supply point
//expressed as a simple integer.
//
//Quick examples:
//
//logisticMap(3,3,[0],[0])
import 'package:dart/src/6_logistic_map.dart';
////returns
////[[0,1,2],
//// [1,2,3],
//// [2,3,4]]
//logisticMap(5,2,[0,4],[0,0])
////returns
////[[0,1,2,1,0],
//// [1,2,3,2,1]]
//
//Remember that our company is operating with trucks, not drones, so you can simply use Manhattan distance. If supply points are present, they are going to be within the boundaries of the map; if no supply point is present on the map, just return None/nil/null in every cell.
//
//logisticMap(2,2,[],[])
////returns
////[[null,null],
//// [null,null]]
//
//Note: this one is taken (and a bit complicated) from a problem a real world AAA company [whose name I won't tell here] used in their interview. It was done by a friend of mine. It is nothing that difficult and I assume it is their own version of the FizzBuzz problem, but consider candidates were given about 30 mins to solve it.

import "package:test/test.dart";

void main() {
  test('Basic tests', () {
    expect(
        logisticMap(3, 3, [0], [0]),
        equals([
          [0, 1, 2],
          [1, 2, 3],
          [2, 3, 4]
        ]));
    expect(
        logisticMap(3, 3, [2], [2]),
        equals([
          [4, 3, 2],
          [3, 2, 1],
          [2, 1, 0]
        ]));
    expect(
        logisticMap(1, 1, [0], [0]),
        equals([
          [0]
        ]));
    expect(
        logisticMap(5, 2, [0, 4], [0, 0]),
        equals([
          [0, 1, 2, 1, 0],
          [1, 2, 3, 2, 1]
        ]));
    expect(
        logisticMap(2, 2, [], []),
        equals([
          [null, null],
          [null, null]
        ]));
  });
}
