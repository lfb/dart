void main(List<String> args) {
  var str = '👍';
  print(str);
  print(str.length); // 2 UTF-16
  print(str.runes.length); // 1 UTF-32

  // Runes 可以讲 UTF-32 字符集表示的内容转换成符号
  Runes input = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input)); // 🚀

  // Symbol
  var symbol = #abc;
  print(symbol); // Symbol("abc")

  var symbol2 = new Symbol("abc");
  print(symbol2); // Symbol("abc")
  print(symbol == symbol2); // true

  // 声明动态类型的变量
  dynamic foo = 'bar';
  foo = 123;
  print(foo); // 123
}
