void main() {
  print('----------Idol------');
  Idol apink = Idol(name: 'APink', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('----------Boygroup------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayMembersCount();
  bts.sayName();
  bts.sayMale();

  print('----------Girlgroup------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  redVelvet.sayMembersCount();
  redVelvet.sayName();
  redVelvet.sayFemale();

  print('------------- Type comparison 1 -------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('------------- Type comparison 2 -------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print('------------- Type comparison 3 -------');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// Inheritance

class Idol {
  String name;
  int membersCount;

  Idol({required this.name, required this.membersCount});

  void sayName() {
    print('We are ${this.name}.');
  }

  void sayMembersCount() {
    print('${this.name} has ${this.membersCount} members!');
  }
}

class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount,
  ) : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('We are a boygroup!');
  }
}

class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ) : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('We are a girlgroup!');
  }
}
