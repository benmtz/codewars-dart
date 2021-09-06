String rgb(int r, int g, int b) {
  return '${toBase16(r)}${toBase16(g)}${toBase16(b)}'; // replace with your solution
}

String toBase16(int val) {
  var chars = '0123456789ABCDEF';
  if (val > 255) {
    val = 255;
  } else if (val < 0) val = 0;
  var remainders = [];
  do {
    remainders.add(val % 16);
    val ~/= 16;
  } while (val != 0);
  return remainders.reversed.map((c) => chars[c]).join('').padLeft(2, '0');
}
