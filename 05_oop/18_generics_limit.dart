// 泛型类型限制
class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  String toString() => 'Instance of Foo<$T>';
}

// 子类
class Extender extends SomeBaseClass {}

class AnotherClass {}

void main() {
  // 必须是先声明约定的类型
  var someBaseFoo = Foo<SomeBaseClass>();
  print(someBaseFoo); // Instance of Foo<SomeBaseClass>

  var someBaseFoo2 = Foo<Extender>();
  print(someBaseFoo2); // Instance of Foo<Extender>

  var foo = Foo();
  print(foo); // Instance of Foo<SomeBaseClass>
}
