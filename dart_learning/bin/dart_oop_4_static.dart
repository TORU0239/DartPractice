void main() {
  Employee seulgi = Employee('Seulgi');
  Employee chorong = Employee('Chorong');

  seulgi.name = 'Toru Factory';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.building = 'Trump Tower';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static belongs to class, not instances
  static String? building;
  String name;

  Employee(
    this.name,
  );

  void printNameAndBuilding() {
    print('I am $name, working at $building');
  }

  static void printBuilding() {
    print('$building is my workplace.');
  }
}
