import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var fitMode = [BoxFit.none,BoxFit.contain, BoxFit.cover,
  BoxFit.fill, BoxFit.fitHeight,BoxFit.fitWidth,BoxFit.scaleDown];

//循环生成Image控件
formImgs() {
  var imgLi = <Widget>[];
  fitMode.forEach((fit) {
    imgLi.add(Container(
        width: 100,
        height: 50,
        color: slRandomColor(),
        child: Image(
          image: AssetImage("images/IMG_1930.jpg"),
          fit: fit,
        )));
  });
  return imgLi;
}

var imgBox = Row(
  children: formImgs(),
);

//叠合模式数组
var colorBlendMode = [
  BlendMode.clear,BlendMode.src,BlendMode.dst,
  BlendMode.srcOver,BlendMode.dstOver,BlendMode.srcIn,
  BlendMode.dstIn,BlendMode.srcOut,BlendMode.dstOut,
  BlendMode.srcATop,BlendMode.dstATop,BlendMode.xor,
  BlendMode.plus, BlendMode.modulate,BlendMode.screen,
  BlendMode.overlay,BlendMode.darken,BlendMode.lighten,
  BlendMode.colorDodge,BlendMode.colorBurn,BlendMode.hardLight,
  BlendMode.softLight,BlendMode.difference,BlendMode.exclusion,
  BlendMode.multiply,BlendMode.hue,BlendMode.saturation,
  BlendMode.color, BlendMode.luminosity,
];

//循环生成Image控件
formImgsColorBlendMode() {
  var imgLi = <Widget>[];
  colorBlendMode.forEach((mode) {
    imgLi.add(Column(children: <Widget>[
      Padding( child:Image(
        width: 60,
        height: 60,
        image: AssetImage("images/IMG_1930.jpg"),
        color: Colors.red,
        colorBlendMode: mode,
      ), padding: EdgeInsets.all(5),),
      Text(mode.toString().split(".")[1])
    ]));
  });
  return imgLi;
}

var imgBox_Blend = Wrap(
  children: formImgsColorBlendMode(),
);
