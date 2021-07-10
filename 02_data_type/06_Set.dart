void main() {
  // 字面量
  var set = <int>{1, 2, 3};
  print(set); // {1, 2, 3}

  var set1 = new Set();
  set1.add('abc');
  set1.add('def');
  print(set1); // {abc, def}
  print(set1.toList()); // [abc, def]

  //  List 转换 Set 时会过滤重复的元素
  List list = [1, 2, 3, 4, 5, 5];
  print(list.toSet()); // {1, 2, 3, 4, 5}

  // 集合特有的操作
  var set2 = new Set();
  set2.addAll(['a', 'b', 'c']);
  var set3 = new Set();
  set3.addAll(['b', 'd', 'f']);

  //求交集
  print(set2.intersection(set3)); // {b}

  // 求并集
  print(set2.union(set3)); // {a, b, c, d, f}

  // 求差集
  print(set2.difference(set3)); // {a, c}

  // 返回第一个元素
  print(set2.first);

  // 返回最后一个元素
  print(set2.last);

  // 集合不能通过下标取值
  print(set2.elementAt(1)); // b
}
