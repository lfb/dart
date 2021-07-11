class Circle {
  final double PI = 3.1415926;
  num r;

  Circle(this.r);

  // num area() {
  //   return this.PI * this.r * this.r;
  // }

  // 使用 get 声明的方法，不能有小括号
  num get area {
    return this.PI * this.r * this.r;
  }

  // Setter
  set setCircle(val) {
    this.r = val;
  }
}

void main() {
  Circle c = new Circle(10);
  // print(c.area()); // 314.15926
  print(c.area); // 314.15926
  c.setCircle = 20;
  print(c.area); // 1256.63704
}
