import 'dart:math';

void main() {
  // 地板除，向下取整
  print(7 ~/ 4); // 1

  // 类型判断运算符
  List list = [];
  if (list is List) {
    print('list is List');
  } else {
    print('list is not List');
  }

  if (list is! List) {
    print('list is not List');
  } else {
    print('list is List');
  }

  // 避空运算符,如果第一个值是null，返回第二个
  print(1 ?? 3); // 1
  print(null ?? 12); // 12

  // 如果name为空，则赋值
  var name;
  // if (name == null) {
  //   name = "bobo";
  // }
  name ??= 'bobo';
  print(name); // bobo

  name ??= 'lynn';
  print(name); // bobo

  // 条件属性运算符（保护可能为空的属性）
  var map = new Map();
  print(map.length);
  var obj;
  // print(obj.length); // NoSuchMethodError: The getter 'length' was called on null.
  print(obj?.length); // null

  // 级联运算符
  Set set = new Set();
  set.add(1);
  set.add(2);
  set.add(3);
  set.remove(2);
  print(set); // {1, 3}

  set
    ..add('a')
    ..add('b')
    ..add('c')
    ..remove('b');
  print(set); // {1, 3, a, c}
}
