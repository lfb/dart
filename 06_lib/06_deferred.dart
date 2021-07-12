import 'lib/function.dart' deferred as func;

void main() {
  // func.hello(); // Deferred library func was not loaded.
  print('1');
  greet(); // Hello Wolrd!
  print('2');
  print('3');

  // 1
  // 2
  // 3
  // Hello Wolrd!
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}
