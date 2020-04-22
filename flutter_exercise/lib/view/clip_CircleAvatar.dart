import 'package:flutter/material.dart';

var chip = Chip(
  backgroundColor: Color(0xffE5E5E5),
  padding: EdgeInsets.all(3),
  avatar: CircleAvatar(
      backgroundColor: Colors.lightBlue.shade400,
      child: new Text(
        'Toly',
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      )),
  label: Text('张风捷特烈'),
);
