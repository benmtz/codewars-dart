String meeting(String s) {
  return (s
          .toUpperCase()
          .split(';')
          .map((p) => '(${List.from(p.split(':').reversed).join(', ')})')
          .toList()
            ..sort((p1, p2) => p1.compareTo(p2)))
      .join();
}
