void main() {
  _Idol blackPink = _Idol(
      'Black Pink', ['Jisoo', 'Jenny', 'Lisa', 'Rose']); // with or without new

  _Idol bts = _Idol.fromList([
    ['RM', 'Jin', 'Suga', 'J-Hope', 'Jimin', 'V', 'Jungkook'],
    'BTS'
  ]);

  print(blackPink.firstMember);
  print(bts.firstMember);

  blackPink.introduce();
  bts.introduce();
}

// getter and setter

// private : _ (underscore)
class _Idol {
  final String name;
  final List<String> members;

//   Idol(String name, List<String> members)
//     : this.name = name, this.members = members;

  // equivalent to the below
  _Idol(this.name, this.members);
  // we can get values in build time for const keyword
  // thus we have to use values that const works.
  // named constructor
  _Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('Hello! We are $name!');
  }

  void introduce() {
    print('We have $members!');
  }

  // getter
  String get firstMember {
    return members[0];
  }
}
