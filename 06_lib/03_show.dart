// show 后面指定包含引入的内容
import 'lib/common.dart' show f1, f3;

void main() {
  f1(); // f1 is running
  f3(); // f3 is running
}
