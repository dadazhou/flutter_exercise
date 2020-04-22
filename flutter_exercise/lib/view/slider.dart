import 'package:flutter/material.dart';

var slider = Slider(
  min: 100,
  max: 200,
  value: 180,
  activeColor: Colors.green,
  inactiveColor: Colors.grey,
  onChanged: (value) {
    print(value);
  },
  onChangeStart: (v) {},
  onChangeEnd: (v) {},
);
