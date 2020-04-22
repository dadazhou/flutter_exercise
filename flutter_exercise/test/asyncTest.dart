class Water{
  double temperature;
  Water(this.temperature);
  Future<Water> heat() {
    temperature=100;
    return Future<Water> (()=>this);
  }
}

main(){
  print("打开烧水开关");
  heat() async{
    var water = await Water(100).heat();
    print('水已经烧开,现在温度:${water.temperature},开始冲水');
    return water;
  }
  print("扫地");
}