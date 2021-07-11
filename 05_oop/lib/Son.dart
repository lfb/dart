import 'Father.dart';

class Son extends Father {
  String name = "bobo";

  // Son(String job) : super(job);
  Son.origin(String job) : super.origin(job);
  @override
  say() {
    super.say();
    print("我是$name");
  }
}
