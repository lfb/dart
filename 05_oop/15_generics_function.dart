// String getData(String value) {
//   return value;
// }

// int getData(int value) {
//   return value;
// }

// 不指定数据类型的函数
// getData(value) {
//   return value;
// }

T getData<T>(T value) {
  return value;
}

// 只约定参数类型，不约定函数返回的类型
// getData<T>(T value) {
//   return value;
// }

void main() {
  print(getData<String>('bobo'));
  print(getData<int>(1024));
}
