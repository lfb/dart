// 泛型类
class GenericsClass<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main() {
  GenericsClass g = new GenericsClass<int>();
  g.add(1);
  g.add(2);
  g.add(3);
  g.info(); // {1, 2, 3}

  GenericsClass g1 = new GenericsClass<String>();
  g1.add('a');
  g1.add('b');
  g1.add('c');
  g1.info(); // {a, b, c}

  Set s = new Set<int>();
  s.add(1);
  s.add(3);
  print(s); // {1, 3}

  // 字面量形式泛型
  Set s1 = <int>{};
  s1.add(1);
  s1.add(3);
  print(s1); // {1, 3}
}
