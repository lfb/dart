abstract class Processor {
  String cores; // 内核：2核，4核
  arch(String name); // 芯片制程：7nm, 5nm
}

abstract class Camera {
  String resolution; // 分辨率：1000w，3000w
  brand(String name); // 品牌：三星，莱卡，葵司
}

class Phone implements Processor, Camera {
  @override
  String cores;

  @override
  String resolution;

  @override
  arch(String name) {
    print("芯片制程：$name");
  }

  @override
  brand(String name) {
    print("相机品牌: $name");
  }

  Phone(this.cores, this.resolution);
}

void main() {
  Phone p = new Phone('4核', '三星');
  print(p.cores);
  print(p.resolution);
  p.arch('7nm');
  p.brand('莱卡');
}
