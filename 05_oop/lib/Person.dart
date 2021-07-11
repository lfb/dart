class Person {
  String name;
  // 声明私有属性
  num _money = 100;

  Person(this.name);

  num getMoney() {
    return this._money;
  }

  void _getName() {
    print("您好，我叫$name");
  }
}
