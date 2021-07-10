class Person {
  // 类的属性
  String name = "bobo";

  // 类的方法
  void getInfo() {
    print("I am $name");
  }
}

void main(List<String> args) {
  Person p = new Person();

  // 访问类的属性
  print(p.name);
  // 访问类的方法
  p.getInfo();

  // Dart 中的所有内容都是对象
  Map m = new Map();
  print(m.length);
}
