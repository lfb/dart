enum Color { red, green, blue }

void main() {
  // 通过index返回枚举中具体常量的值
  print(Color.green.index); // 1

  // 通过 values 返回常量列表
  print(Color.values); // [Color.red, Color.green, Color.blue]

  List<Color> colors = Color.values;
  print(colors); // [Color.red, Color.green, Color.blue]

  // 通过下班，访问 列表的内容
  print(colors[0]); // Color.red
  colors.forEach((element) {
    // value: Color.red, index: 0
    // value: Color.green, index: 1
    // value: Color.blue, index: 2
    print('value: $element, index: ${element.index}');
  });
}
