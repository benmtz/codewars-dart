/// josephus remove an item every [k] in a list of [items] cycling when the list
/// is exhausted, it will return a list sorted by exhausting order.
List josephus(final List items, final int k) {
  if (k == 0) return List.from(items.reversed);

  var aliveSoldiers = List.from(items); // get a mutable list of soldiers
  var deadSoldiers = [];
  int deathTick; // at one it's time to die ~~

  while (aliveSoldiers.isNotEmpty) {
    deathTick = k;
    while (deathTick != 1) {
      deathTick--;
      aliveSoldiers = moveFirstItemToLast(aliveSoldiers);
    }
    deadSoldiers.add(aliveSoldiers[0]);
    aliveSoldiers.removeAt(0);
  }

  return deadSoldiers;
}

/// Returns a new [list] with the first element moved at the end.
List moveFirstItemToLast(List list) {
  return list.sublist(1)..add(list[0]);
}
