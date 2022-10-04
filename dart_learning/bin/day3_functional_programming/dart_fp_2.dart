void main() {
  // map function (transformation)
  List<String> blackPink = ['로제', '지수', '리사', '제니'];
  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  }); // returns Iterable

  print(blackPink);
  print(newBlackPink.toList());

  // Using Arrow function
  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');
  print(newBlackPink2.toList());

  // a map function returns a different instance
  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  // List Mapping
  String number = '13579';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);
}
