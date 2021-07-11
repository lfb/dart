import './lib/Person.dart';

void main() {
  Person p = new Person("bobo");
  print(p.name); // bobo
  // print(p._money); // Error: Method not found: 'Person'.
  print(p.getMoney()); // 100
  // print(p._getName()); // 私有方法
}
