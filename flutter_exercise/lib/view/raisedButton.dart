import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var raisedButton = RaisedButton(
  onPressed: (){
    print("dada");
  },
  child: Text("dada"),
  color: slRandomColor(),
  highlightColor: Colors.blue,
);