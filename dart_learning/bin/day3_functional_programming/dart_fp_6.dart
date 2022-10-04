void main() {
  // The use of Reduce()
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.reduce((prev, next) {
    print('------------');
    print('prev: $prev');
    print('next: $next');
    print('total: ${prev + next}');
    return prev + next;
  });

  print(result);

  List<String> words = [
    'Hello ',
    'I am ',
    'toruchoi ',
  ];

  final sentence = words.reduce((prev, next) => prev + next);
  print(sentence);
}
