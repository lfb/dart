void main() {
  // 声明 List 字面量
  List list = ['a', 'b', 'c'];
  print(list);

  // 限定类型
  List list2 = <int>[1, 2, 3];
  print(list2);

  // 构造函数创建
  var list3 = new List.empty();
  // list3.add(1); // Unsupported operation: Cannot add to a fixed-length list
  print(list3);

  var list4 = new List.filled(3, 1);
  print(list4);

  // 拓展操作符
  var list5 = [0, ...list4];
  print(list5); // [0, 1, 1, 1]

  var list6;
  // type 'Null' is not a subtype of type 'Iterable<dynamic>'
  // var list7 = [7, ...list6];
  var list7 = [7, ...?list6];
  print(list7); // [7]

  // 返回列表的长度
  print(list.length); // 3

  // 列表的反转
  print(list.reversed); // (c, b, a)
  print(list.reversed.toList()); // [c, b, a]
  print(list); // [a, b, c]

  // 添加元素
  list.addAll([4, 5, 6]);
  print(list); // [a, b, c, 4, 5, 6]
  list.add(7);
  print(list); // [a, b, c, 4, 5, 6, 7]

  // 删除元素
  list.remove(7);
  print(list); // [a, b, c, 4, 5, 6]

  // 根据下标元素删除元素
  list.removeAt(1);
  print(list); // [a, c, 4, 5, 6]

  // 在指定元素添加元素
  list.insert(1, 'element');
  print(list); // [a, element, c, 4, 5, 6]

  // 清空
  list.clear();
  print(list.length); // 0
  print(list.isEmpty); // true

  // 合并元素
  List words = ['Hello', 'World'];
  print(words.join('-')); // Hello-World
}
