class Point {
  num x, y;

  Point(this.x, this.y);

  // 命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }

  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // 默认坐标
  Point p = new Point.origin();
  print(p.x); // 0

  // 手动设置坐标
  Point p2 = new Point.fromJson(x: 10, y: 20);
  print(p2.x); // 10
}
