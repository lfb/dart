class Father {
  String name = 'baba';
  double _money = 100000000;
  String job;

  Father(this.job);

  // 命名构造函数
  Father.origin(this.job);

  //

  say() {
    print('我是$name');
  }

  get getMoney {
    return this._money;
  }
}
