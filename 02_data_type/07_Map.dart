void main() {
  // 字面量
  var person = {"name": "bobo", "age": 18};
  print(person); // {name: bobo, age: 18}

  var map = new Map();
  map['name'] = 'lynn';
  map['age'] = 16;
  print(map); // {name: lynn, age: 16}

  // 访问属性
  print(map['name']); // lynn
  print(map['age']); // 16

  // 判断 Map 的 key 或者 value 是否存在
  print(map.containsKey("name")); // true
  print(map.containsValue("lynn")); // true

  // 赋值, 如果key不存在我们才赋值，如果存在，则不赋值
  map.putIfAbsent('name', () => 'bob');
  map.putIfAbsent('like', () => 'code');
  print(map); // {name: lynn, age: 16, like: code}

  // 获取Map中所有的key
  print(map.keys); // (name, age, like)

  // 获取Map中所有的value
  print(map.values); // (lynn, 16, code)

  // 根据条件进行删除
  map.removeWhere((key, value) {
    return key == 'name';
  });
  print(map); // {age: 16, like: code}
}
