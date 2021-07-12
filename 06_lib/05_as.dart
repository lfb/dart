import 'lib/common.dart';
// 给库添加前缀，解决冲突
import 'lib/function.dart' as func;

void main() {
  f1(); // f1 is running
  func.f1(); // f1 of function is running
}
