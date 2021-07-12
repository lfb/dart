library phone;

import 'dart:math';
// 与分库建立联系
part 'Camera.dart';
part 'Processor.dart';

void main() {
  Camera c = new Camera();
  c.info();

  Processor p = new Processor();
  p.info();

  print(pi);
}
