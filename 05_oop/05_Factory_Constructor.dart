class Person {
  String name;

  static Person instance;

  // 工厂构造函数
  factory Person([String name = 'bobo']) {
    // 工厂构造函数中，不能使用 this 关键字

    // 第一次实例化
    if (Person.instance == null) {
      Person.instance = new Person.newSelf(name);
    }

    // 非第一次实例化
    return Person.instance;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main(List<String> args) {
  Person p1 = new Person("lynn");
  print(p1.name); // lynn

  Person p2 = new Person("jack");
  print(p2.name); // lynn，单例模式
  print(p1 == p2); // true
}
