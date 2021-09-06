bool validBraces(String braces) {
  var re = RegExp(r'(\(\))|(\[\])|(\{\})');
  while (re.hasMatch(braces)) {
    braces = braces.replaceAll(re, '');
  }
  return braces.isEmpty;
}
