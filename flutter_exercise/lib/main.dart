import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterexercise/animations/ScaleAnimationRoute.dart';
import 'package:flutterexercise/pager/canvasPage.dart';
import 'package:flutterexercise/pager/clockPage.dart';
import 'package:flutterexercise/pager/listFilePage.dart';
import 'package:flutterexercise/view/BottomNavigationBar.dart';
import 'package:flutterexercise/view/bottomSheet.dart';
import 'package:flutterexercise/view/checkBoxWidget.dart';
import 'package:flutterexercise/view/draw.dart';
import 'package:flutterexercise/view/snackBar.dart';
import 'package:flutterexercise/view/tabbar.dart';
import 'package:flutterexercise/view/tabbarview.dart';
import 'package:flutterexercise/view/widget_design.dart';

void main() => runApp(MyApp());

var scContext;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new DefaultTabController(length: 3, child: scaffold)
    );
  }
}

var scaffold = Scaffold(
  appBar: AppBar(
    title: Text("哒哒粥"),
    bottom: tabBar,
    backgroundColor: slRandomColor(),
    elevation: 12,
    centerTitle: true,
    toolbarOpacity: .4,
  ),
  body: Builder(builder: (context){
    scContext = context;
    return ScaleAnimationRoute();
  },),
  drawer: draw,
  bottomNavigationBar: bottomNavigationBar,
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      Scaffold.of(scContext).showBottomSheet(bottomSheet.builder);
    },
    tooltip: 'Increment',
    child: Icon(Icons.add),
  ),
// Column(
//    children: <Widget>[
//      raisedButton,
//      iconBtn,
//      flatButton,
//      outLineButton
//    ],
//  ),
);
