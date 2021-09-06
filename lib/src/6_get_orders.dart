/// Transform non capitalized & non spaced [order] into a clean one.
String getOrder(String order) {
  var orderedRefs = getOrderedRefs(order);
  return orderedRefs
      .map((o) => o[0].toUpperCase() + o.substring(1))
      .join(' ')
      .trim();
}

/// Transform a non capitalized & non spaced [dirtyOrder] into a sorted
/// list of order by menu position.
List<String> getOrderedRefs(String dirtyOrder) {
  var orders = [
    'burger',
    'fries',
    'chicken',
    'pizza',
    'sandwich',
    'onionrings',
    'milkshake',
    'coke'
  ];
  for (var order in orders) {
    dirtyOrder = dirtyOrder.replaceAll(order, order + ' ');
  }
  return dirtyOrder.trim().split(' ')
    ..sort((o1, o2) => orders.indexOf(o1) - orders.indexOf(o2));
}
