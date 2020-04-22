import 'package:flutter/material.dart';

var numLi = [1, 2, 3, 4, 5, 6, 7];
var radios=Wrap(children: numLi.map((i) {
  return Radio<int>(value: i, groupValue: 5, onChanged: (int value) {},);
}).toList());
