abstract class Phone {
  // 声明抽象方法
  // 手机的处理理器
  void processor();
  // 手机的摄像头
  void camera();

  void info() {
    print("我是抽象类的普通方法");
  }
}

class Huawei extends Phone {
  // 普通类继承了抽象类，就必须实现抽象类的所有方法
  @override
  void processor() {
    print("麒麟996");
  }

  @override
  void camera() {
    print("三星摄像头");
  }
}

void main() {
  // 抽象类不能被实例化
  Huawei huawei = new Huawei();
  huawei.processor();
  huawei.camera();
  huawei.info();
}
