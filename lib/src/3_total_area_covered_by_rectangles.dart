int calculate(List<List<int>> rects) {
  var sortedRects = sortRectangles(rects);
  while (sortedRects.isNotEmpty) {}
}

List<List<int>> sortRectangles(List<List<int>> rectangles) {
  return List.from(rectangles)..sort((r1, r2) => r1[0] - r2[0]);
}
