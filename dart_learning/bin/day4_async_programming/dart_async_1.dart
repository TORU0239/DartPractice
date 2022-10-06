void main() {
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

  addNumbers(1, 1);
  addNumbers(2, 2);
}

// 1+1 = 2
// 2+2 = 4

// async and await keyword
void addNumbers(int number1, int number2) async {
  print('calucating: $number1 + $number2');
  // simulating a server
  await Future.delayed(Duration(seconds: 2), () {
    print('calucated: $number1 + $number2 = ${number1 + number2}');
  });
  print('completed! $number1 + $number2');
}
