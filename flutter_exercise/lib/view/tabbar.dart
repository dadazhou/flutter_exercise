import 'package:flutter/material.dart';

var chartLi = ["dada","xy is pig","sssssss"];

var tabBar = TabBar(
  labelStyle: TextStyle(fontSize: 20),
  labelColor: Color(0xffF64C19),
  unselectedLabelColor: Colors.white,
  tabs: chartLi.map((item) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Text(item),
      height: 40,
    );
  }).toList(),
);