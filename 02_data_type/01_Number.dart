void main() {
  // 声明整数类型
  int count = 3;
  print(count);

  // 声明浮点数
  double price1 = 3;
  double price2 = 3.2;
  print(price1); // 3.0
  print(price2); // 3.2

  // 声明数值类型，既可以浮点数又可以整形
  num num1 = 3.7;
  num num2 = 3;
  print(num1);
  print(num2);
  print(num1.toInt()); // 向下取整

  // 四舍五入
  const PI = 3.1415926;
  print(PI.round());
  print(PI.toStringAsFixed(4));
  
  // 返回余数
  print(10.remainder(4));
  
  // 数字比较 0：相同，1：大于，-1：小于
  print(10.compareTo(8)); // 1
  print(10.compareTo(10)); // 0
  print(10.compareTo(12)); // -1

  // 返回最大公约数
  print(12.gcd(18)); // 6
  
  // 科学计数法
  print(1000.toStringAsExponential(2)); // 1.00e+3
} 