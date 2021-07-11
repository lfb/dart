class Person {
  static String name = 'bobo';
  int age = 18;

  static void printInfo() {
    // 不能通过 this 关键字访问静态属性
    print(name);

    // 静态方法中不能访问非静态属性
    // print(age);
  }

  printUserInfo() {
    // 非静态方法，可以访问静态属性
    // 非静态方法，可以访问静态方法
    printInfo();
    print(name);
    print(age);
  }
}

void main() {
  // 静态成员，可以通过类名称直接访问
  print(Person.name);
  Person.printInfo();

  // 不能通过类名称，直接访问非静态方法
  // print(Person.printUserInfo());
  Person p = new Person();
  // print(p.name); // 不同通过实例化对象去访问静态属性
}
