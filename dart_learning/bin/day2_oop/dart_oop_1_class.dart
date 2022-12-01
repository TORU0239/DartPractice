void main() {
  _Idol blackPink = _Idol('Black Pink', ['Jisoo', 'Jenny', 'Lisa', 'Rose'],
      ""); // with or without new

  _Idol bts = _Idol.fromList([
    ['RM', 'Jin', 'Suga', 'J-Hope', 'Jimin', 'V', 'Jungkook'],
    'BTS'
  ]);

  print(blackPink.firstMember);
  print(bts.firstMember);

  blackPink.introduce();
  bts.introduce();
  bts.addFanclub = "ARMY";
}

// getter and setter

// private : _ (underscore)
class _Idol {
  final String name;
  final List<String> members;
  String fanclub;

//   Idol(String name, List<String> members)
//     : this.name = name, this.members = members;

  // equivalent to the below
  _Idol(this.name, this.members, this.fanclub);
  // we can get values in build time for const keyword
  // thus we have to use values that const works.
  // named constructor
  _Idol.fromList(List values)
      : members = values[0],
        name = values[1],
        fanclub = "";

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

  // setter
  set addFanclub(String fanclubName) {
    fanclub = fanclubName;
    print(fanclub);
  }
}
