// import 'package:dart_learning/dart_library.dart' as dart_learning;

void main(List<String> arguments) {
  // print(add(10));
  // print(multiply(x: 5, z: 10, y: 34));
  // print(subtract(x: 400, z: 100));

  print(calculator(add, x: 10, y: 20, z: 35)); // 10 + 20 + 35 = 65
  print(calculator(subtract, x: 10, y: 20, z: 35)); // 10 - 20 -35 = -45
  print(calculator(multiply, x: 10, y: 20, z: 35)); // 10 * 20 * 35 = 7000

  print(namedParameter(first: "FIRST", second: "SECOND", third: "THIRD"));
  print(requiredParameter(first: "FIRST", second: "SECOND"));
  print(neitherRequiredAndNamed("first", "second"));
  print(optionalParameter("first"));
}

// default value of parameters of a method
// int add(int x, {int y = 11, int z = 22}) => x + y + z;
int add({required int x, required int y, required int z}) => x + y + z;

// required value of method
int multiply({required int x, required int y, required int z}) {
  return x * y * z;
}

// required value with default value
int subtract({required int x, int y = 10, required int z}) => x - y - z;

// How to use Typedef
typedef Operation = int Function(
    {required int x,
    required int y,
    required int z}); // define the default form

// example of calculator

int calculator(Operation operation,
        {required int x, required int y, required int z}) =>
    operation(x: x, y: y, z: z);

String namedParameter(
    {String first = "", String second = "", String third = ""}) {
  return "$first, $second, $third";
}

String requiredParameter({required String? first, required String? second}) =>
    "$first, $second";
String neitherRequiredAndNamed(String first, String second) =>
    "$first, $second";
optionalParameter(String first, [String? second]) => "$first, $second";
