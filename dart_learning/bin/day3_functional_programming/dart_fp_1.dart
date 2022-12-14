void main() {
  // conversion among data structures,
  // List as map or List to Set
  List<String> blackPink = ['로제', '지수', '리사', '제니'];
  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  // Map to List, retrieving keys and values
  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.keys);
  print(blackPinkMap.values);

  // Set to List
  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet.toList());

  final List<String> test = ["test1", "test2", "test3", "test4", "test1"];
  print(test.toSet());
}
