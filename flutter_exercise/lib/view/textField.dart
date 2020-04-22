import 'package:flutter/material.dart';

var textField = TextField(
  keyboardType: TextInputType.number,
  textAlign: TextAlign.center,
  maxLines: 1,
  cursorColor: Colors.black,
  cursorWidth: 10,
  style: TextStyle(fontSize: 20,color: Colors.lightBlue),
  onChanged: (str){
    print(str);
  },
  onEditingComplete: (){
    print("onEditingComplete");
  },
  onSubmitted: (str){
    print("onSubmitted:" + str);
  },
  onTap: (){
    print("onTap");
  },
);