class Rect {
  int height;
  int width;

  // Rect(this.height, this.width);
  // Rect([int height = 10, int width = 20]) {
  //   this.height = height;
  //   this.width = width;
  //   print("${this.height} -- ${this.width}");
  // }

  // Rect(this.height, this.width);
  // Rect({int height = 10, int width = 20}) {
  //   this.height = height;
  //   this.width = width;
  //   print("${this.height} -- ${this.width}");
  // }

  // 初始化列表
  Rect()
      : height = 4,
        width = 20 {
    print("${this.height} -- ${this.width}");
  }
}

class Point {
  double x, y, z;
  Point(this.x, this.y, this.z);

  // 初始化列表的特色用法（重定向构造函数）
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  Rect r = new Rect();
  print(r.width); // 20

  Point p = new Point(1, 2, 3);
  print(p.z); // 3.0
  Point p2 = new Point.twoD(4, 5);
  print(p2.z); // 0.0
}
