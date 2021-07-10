void main() {

  String str1 = 'hello world!';
  var str2 = "hello dart!";
    const str3 = '''
    hello
    world
    !
  ''';

  print(str1);
  print(str2);
  print(str3);

  // 常见操作
  // 字符串拼接
  print(str1 + str2);
  print("$str1 $str2");

  // 字符串分隔
  print(str1.split('')); // [h, e, l, l, o,  , w, o, r, l, d, !]

  // 字符串的裁切
  print(" abc ".trim());

  // 判断字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);

  // 字符串替换
  print(str1.replaceAll('world', 'js')); // hello js!

  // 支持正则替换
  print('h1hah2h12h21h33'.replaceAll(RegExp(r'\d+'), '_'));

  // 通过正则匹配手机号
  var isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch('13611416144'));

  // 查找是否包含字符串
  print(str1.contains('e'));
  print(str1.contains('23'));

  // 定位字符串
  print(str1.indexOf('e'));
}