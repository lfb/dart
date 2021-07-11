class Phone {
  // 这是旧版本的开机方法，将来版本会移除
  @deprecated
  activate() {
    turnOn();
  }

  turnOn() {
    print("开机..");
  }
}

void main() {
  Phone p = new Phone();
  p.activate();
  p.turnOn();
}
