// hide 会隐藏后面的内容
import 'lib/common.dart' hide f1, f3;

void main() {
  f2(); // f2 is running
}
