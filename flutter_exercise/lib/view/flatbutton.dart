import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var flatButton = FlatButton(
  onPressed: (){
    print("dada:flatButton clicked");
  },
  child: Text("dada:flatButton"),
  highlightColor: Colors.blue,
  textColor: slRandomColor(),
);