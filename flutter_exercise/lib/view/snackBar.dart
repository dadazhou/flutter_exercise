import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var snackBar = SnackBar(
  backgroundColor: slRandomColor(),
  content: Text('Hello'),
  duration: Duration(seconds: 1),
  action: SnackBarAction(
    label: '确定',
    onPressed: (){
      print("哒哒粥");
    },
  ),
);