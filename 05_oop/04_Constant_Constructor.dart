class Point {
  num x, y;

  Point(this.x, this.y);
}

class ImmutablePoint {
  // 属性必须通过 final 声明
  final num x;
  final num y;

  // 常量构造函数，必须通过 const 声明
  const ImmutablePoint(this.x, this.y);
}

void main() {
  Point p1 = new Point(1, 2);
  Point p2 = new Point(1, 2);
  print(p1 == p2); // false，因为内存地址不同

  // 常量构造函数，可以当做普通构造函数使用
  ImmutablePoint immu1 = new ImmutablePoint(1, 2);
  ImmutablePoint immu2 = new ImmutablePoint(1, 2);
  print(immu1 == immu2); // false，因为内存地址不同

  // 声明不可变对象，必须通过 const 关键字
  ImmutablePoint immu4 = const ImmutablePoint(1, 2);
  ImmutablePoint immu5 = const ImmutablePoint(1, 2);
  print(immu4 == immu5); // true
}
