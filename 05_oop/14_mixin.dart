class Father {}

// 作为Mixin 的类只能继承自 Object，不能继承其他类
// class MixinA extends Father {
class MixinA extends Object {
  String name = 'MixinA';

  // 用作混入的类，不能拥有构造函数
  // MixinA();
  void printA() {
    print('A');
  }

  void run() {
    print('A is running..');
  }
}

class MixinB {
  String name = 'MixinB';
  void printB() {
    print('B');
  }

  void run() {
    print('B is running..');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass myClass = new MyClass();
  myClass.printA(); // A
  myClass.printB(); // B

  // 使用多个混入时，后引入的混入会覆盖之前混入中的重复内容
  print(myClass.name); // MixinB
  myClass.run(); // B is running..
}
