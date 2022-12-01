// Mapping Map
void main() {
  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  final result = harryPotter.map(
      (key, value) => MapEntry('Harry Potter Chacter $key', '해리포터 캐릭터 $value'));

  print(harryPotter);
  print(result);

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  final values = harryPotter.values.map((x) => '해리포터 $x').toList();
  print(keys);
  print(values);

  Map<String, String> idols = {
    "JYP": "TWICE",
    "HYBE": "BTS",
    "YG": "BLACKPINK",
    "Starship": "IVE"
  };

  final idolMapping =
      idols.map((key, value) => MapEntry('Enter corp $key', 'Idol $value'));

  print(idolMapping);
}
