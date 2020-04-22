import 'package:flutter/material.dart';
import 'package:flutterexercise/view/widget_design.dart';

var bottomSheet = BottomSheet(
  onClosing: () {},
  builder: (context) => (Container(
    color: slRandomColor(),
    child: Wrap(
      children: <Widget>[
        Center(child: Text('绝域从军计惘然，')),
        Center(child: Text('东南幽恨满词笺。')),
        Center(child: Text('一箫一剑平生意，')),
        Center(child: Text('负尽狂名十五年。')),
      ],
    ),
  )),
);
