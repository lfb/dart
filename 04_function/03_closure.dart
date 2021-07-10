var globalNum = 100;
void main(List<String> args) {
  printInfo() {
    var localNum = 200;
    localNum--;
    print(globalNum); // 100
    print(localNum); // 200
  }

  printInfo();

  // 闭包
  foo() {
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  var fn = foo();
  fn();
  fn();
  fn();
}
