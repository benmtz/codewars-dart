import 'dart:math';

List<List<int>> logisticMap(width, height, xs, ys) {
  var supplyPoints = Iterable.generate(xs.length)
      .map((i) => Point<int>(xs[i], ys[i]))
      .toList();

  var sumMatrix = List<List<Point<int>>>.from(Iterable.generate(
      height,
      (y) => List<Point<int>>.from(
          Iterable.generate(width, (x) => Point<int>(x, y)))));

  return sumMatrix
      .map((row) =>
          row.map((point) => getLowestDistance(point, supplyPoints)).toList())
      .toList();
}

int manathanDistance(Point p1, Point p2) {
  return (p2.x - p1.x).abs() + (p2.y - p1.y).abs();
}

int getLowestDistance(Point p1, List<Point> points) {
  if (points.isEmpty) {
    return null;
  }
  var dists = points.map((p) => manathanDistance(p1, p)).toList();
  dists.sort();
  return dists[0];
}
