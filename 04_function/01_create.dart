void printInfo() {
  print("hello world!");
}

int getNum() {
  return 1;
}

void main() {
  printInfo();
  print(getNum());

  // 匿名函数
  var foo = (val) {
    print(val);
  };
  foo('bobo');

  // 箭头函数
  var fn = (val) => val > 2;
  print(fn(12)); // true

  List list = [1, 2, 3, 4];
  list.forEach((element) => {
        print(element) // 不能写分号;
      });

  // 立即执行函数
  ((int n) {
    print(n);
  })(1024);
}
