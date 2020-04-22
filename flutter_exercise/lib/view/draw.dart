import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var draw = Drawer(
  elevation: 5,
  child: Container(
    alignment: AlignmentDirectional.center,
    color: slRandomColor(),
    child: Text(
      "哒哒粥",
      style: TextStyle(fontSize: 30),
    ),
  ),
);

