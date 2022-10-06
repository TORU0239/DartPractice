import 'dart:async';

// Stream in asynchronous programming
// keyword: yield, we can keep obtaining values from a stream
void main() {
  final controller = StreamController();
  final stream = controller.stream
      .asBroadcastStream(); // in order to do multiple listening

  final streamListener1 =
      stream.where((event) => event % 2 == 0).listen((val1) {
    print('Listener1 : $val1');
  });

  final streamListener2 =
      stream.where((event) => event % 2 == 1).listen((event) {
    print('Listener2: $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
