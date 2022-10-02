void main() {
  Lecture<String, String> lecture1 = Lecture('1234', 'lecture1');
  lecture1.printIdType();
  lecture1.printNameType();

  Lecture<int, String> lecture2 = Lecture(4567, 'lecture2');
  lecture2.printIdType();
  lecture2.printNameType();
}

// generic: in order to take type from outside

class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }

  void printNameType() {
    print(name.runtimeType);
  }
}
