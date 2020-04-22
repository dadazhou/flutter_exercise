import 'package:flutter/material.dart';

var iconBtn = IconButton(
  padding:  EdgeInsets.only(),//可以设置具体某个方向的填充(可以同时指定多个方向)
  onPressed: (){
    print("clicked");
  },
  icon: Icon(Icons.phone_iphone,size: 40,color: Colors.deepPurpleAccent,),
  tooltip: "ios",
  highlightColor: Colors.red,//点击时间稍长的时候背景渐变到这个颜色
  splashColor: Colors.blue,//点击时一闪而过的颜色
  disabledColor: Colors.blueGrey,
);