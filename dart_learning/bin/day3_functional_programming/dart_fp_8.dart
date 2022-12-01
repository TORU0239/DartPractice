void main() {
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];
  // cascading operator
  print([...even, ...odd]);
  print(even);
  print([...even]);
  print(odd);
  print([...odd]);

  print(odd ==
      [...odd]); // The result of cascading operator is different to each other

  final list = ['Nasi Lemak', 'Roti Canai', 'CKT'];
  var result =
      list.map((elements) => 'Malaysian food $elements').take(2).toList();
  print(result);
}
