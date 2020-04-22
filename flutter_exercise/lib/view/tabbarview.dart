import 'package:flutter/material.dart';

var chartLi = ["About", "Ball", "Card"];

var tabBarView = new TabBarView(
  children: chartLi.map((text) {
    return new Center(
        child: new Text(text, style: TextStyle(fontSize: 20),
        ));
  }).toList(),
);
