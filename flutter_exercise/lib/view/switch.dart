import 'package:flutter/material.dart';

var switch_ = Switch(
  value: true,
  activeColor: Colors.greenAccent,
  activeTrackColor: Colors.black,
  activeThumbImage: AssetImage("images/icon_90.png"),
  onChanged: (bool value) {
    print(value);
  },
);
