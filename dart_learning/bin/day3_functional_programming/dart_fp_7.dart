void main() {
  // The use of fold()
  List<int> numbers = [1, 3, 5, 7, 9];
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);
  print(sum);

  List<String> words = [
    'Hello ',
    'I am ',
    'toruchoi ',
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);
}
