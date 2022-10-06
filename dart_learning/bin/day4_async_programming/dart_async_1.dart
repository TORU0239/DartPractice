void main() async {
  // Introducing Future
  Future<String> name = Future.value('Toru Choi');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // delayed takes 2 parameters
  // first: duration
  // secone: a method to be executed after the duration given
  // Future.delayed(Duration(seconds: 2), () {
  //   print('Delay end!');
  // });
  // Only methods returning Future can have await keyword.

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1: $result1');
  print('result2: $result1');
  print('result1 + result2: ${result1 + result2}');
}

// 1+1 = 2
// 2+2 = 4

// async and await keyword
Future<int> addNumbers(int number1, int number2) async {
  print('calucating: $number1 + $number2');
  // simulating a server
  await Future.delayed(Duration(seconds: 2), () {
    print('calucated: $number1 + $number2 = ${number1 + number2}');
  });
  print('completed! $number1 + $number2');
  return number1 + number2;
}
