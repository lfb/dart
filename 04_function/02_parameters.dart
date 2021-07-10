void main() {
  String gerUserInfo(String name, [int age = 16]) {
    return "您好：$name, 年龄 $age";
  }

  String ifno = gerUserInfo('bobo');
  print(ifno); // 您好：bobo, 年龄 16

  // 命名参数
  String gerUserIntro(String name, {int age = 16}) {
    return "您好：$name, 年龄 $age";
  }

  String intro = gerUserIntro('bobo', age: 20);
  print(intro); // 您好：bobo, 年龄 16

  // 函数参数
  var foo = (fn) {
    fn();
  };
  foo(() {
    print("hello bobo"); // hello bobo
  });
}
