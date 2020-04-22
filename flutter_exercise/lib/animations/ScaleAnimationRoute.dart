import 'package:flutter/cupertino.dart';

class AnimatedImage extends AnimatedWidget{

  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: Image.asset("images/IMG_1930.jpg",
        width: animation.value,
        height: animation.value,),
    );
  }
}

class ScaleAnimationRoute extends StatefulWidget {

  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

class _ScaleAnimationRouteState extends State<ScaleAnimationRoute> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: animation,
      child: Image.asset("images/IMG_1930.jpg"),
      builder: (BuildContext ctx, Widget child){
        return new Center(
          child: Container(
            height: animation.value,
            width: animation.value,
            child: child,
          ),
        );
      },
    );
//    return AnimatedImage(animation: animation);
//    return new Center(
//      child: Image.asset("images/IMG_1930.jpg",
//      width: animation.value,
//      height: animation.value,),
//    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
    );
    //图片宽高从0到300
//    animation = new Tween(begin: 0.0,end: 300.0).animate(controller)
////      ..addListener((){
////        setState(() {
////
////        });
////      });
    animation = new Tween(begin: 0.0,end: 300.0).animate(controller);
    //启动动画（正向执行）
    controller.forward();
  }

}