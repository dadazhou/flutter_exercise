import 'package:flutter/material.dart';

class checkBoxWidget extends StatefulWidget{

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<checkBoxWidget>{
  bool _checked = true;//维护CheckBox框的状态
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Checkbox(
      value: _checked,
      activeColor: Colors.blue,
      onChanged: (value){
        setState(() {
          _checked = value;
        });
      },
    );
  }
}
