import 'dart:async';

void main() {
  // calculate(2).listen((event) {
  //   print('calculate(2): $event');
  // });

  // calculate(4).listen((event) {
  //   print('calculate(4): $event');
  // });

  playAllStream().listen((event) {
    print(event);
  });
}

// how to get result one by one?
Stream<int> playAllStream() async* {
  yield* calculate(2);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;
    // how to use async methods in async* methods?
    await Future.delayed(Duration(seconds: 1));
  }
}
