import 'dart:math';

/// Returns the size of [intervals] after merging.
///
/// Overlapps ar ecounted once
int sumOfIntervals(List<List<int>> intervals) {
  var i = [];

  intervals.sort(byStart);

  i.add(intervals[0]);
  for (var interval in intervals) {
    if (areOverlaping(i.last, interval)) {
      if (interval[1] > i.last[1]) {
        i.last[1] = interval[1];
      }
    } else {
      i.add(interval);
    }
  }
  return i
      .map((interval) => interval[1] - interval[0])
      .fold(0, (i1, i2) => i1 + i2);
}

int byStart(List<int> i1, List<int> i2) => i1[0] - i2[0];

/// Checks if [i1] and [i2] are overlapping.
bool areOverlaping(List<int> i1, List<int> i2) =>
    i2[0] <= i1[1] && i2[0] >= i1[0] ||
    i2[1] <= i1[1] && i2[1] >= i1[0] ||
    i2[0] <= i1[0] && i2[1] >= i1[1];

/// Merging two intervals [i1] and [i2].
///
/// intervals have to overlaps for this to work.
List<int> merge(List<int> i1, List<int> i2) =>
    [min(i1[0], i2[0]), max(i1[1], i2[1])];
