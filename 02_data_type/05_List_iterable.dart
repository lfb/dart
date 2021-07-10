void main() {
  var list = [1, 2, 3];
  // for循环
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // for..in
  for (var item in list) {
    print(item);
  }

  // forEarch
  list.forEach((element) {
    print(element);
  });

  var newList = list.map((e) => e * 2);
  var newList2 = list.map((e) {
    return e * e;
  });
  print(newList.toList());
  print(newList2.toList());

  // where() 返回符合条件的元素
  // 判断数组是否是奇数
  bool isOdd(n) => n % 2 == 1;
  print(isOdd(3)); // true
  var oddNum = list.where((element) => isOdd(element));
  print(oddNum.toList()); // [1, 3]

  // 使用 any() 来检测是否有奇数（至少有一个）
  print(list.any(isOdd)); // true
  print(list.any((element) {
    return element % 2 == 1;
  })); // true

  // 使用 every() 来判断是否都是奇数
  print(list.every((element) => element > 3)); // false

  // 扩展: 打平
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((element) => element).toList();
  print(flattened); // [1, 2, 3, 4]

  // 折叠 - 对列表中的每一个元素，做一个累计操作
  print(list); // [1, 2, 3]
  int result = list.fold(2,
      (previousValue, element) => previousValue * element); // 2 * (1 * 2 * 3)

  print(result); // 12
}
