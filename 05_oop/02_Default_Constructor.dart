class Point {
  num x;
  num y;

  // 声明普通构造函数
  Point(num x, num y) {
    print("我是默认构造函数，实例化时，会第一个被调用");
    // 当命名指向有歧义时，this 不能省略
    // x = 0;
    // y = 0；
    this.x = x;
    this.y = y;
  }
}

void main() {
  Point p = new Point(1, 2);
  print(p.x); // 1
  print(p.y); // 2
}
