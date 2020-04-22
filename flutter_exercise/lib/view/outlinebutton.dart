import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var outLineButton = OutlineButton(
  onPressed: () {
    print("dada:outlineButton clicked");
  },
  child: Text("Toly"),
  color: slRandomColor(),
  highlightColor: Colors.blue,
  textColor: Color(0xff000000),
  borderSide: BorderSide(color: Color(0xff0A66F8), width: 2),
);