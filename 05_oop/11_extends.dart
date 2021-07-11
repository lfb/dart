import 'lib/Father.dart';
import 'lib/Son.dart';

void main() {
  Father f = new Father("codingmonkey");
  print(f.name);
  print(f.job);

  // Son s = new Son("coder");
  Son s = new Son.origin("coder");
  print(s.name);
  // print(s.money); // 子类不能访问父类的私有内容
  s.say();
  print(s.getMoney);
  print(s.job);
}
