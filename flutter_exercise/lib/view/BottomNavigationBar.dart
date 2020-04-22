import 'package:flutter/material.dart';

var iconInfoMap = {
  "首页": Icon(Icons.home),
  "消息": Icon(Icons.message),
  "发现": Icon(Icons.select_all),
  "关注": Icon(Icons.contacts),
};

int _currentIndex = 0;

var bottomNavigationBar = BottomNavigationBar(
  items: () {
    var items = <BottomNavigationBarItem>[];
    iconInfoMap.forEach((k, v) {
      items.add(BottomNavigationBarItem(
          title: Text(k), icon: v, backgroundColor: Color(0xff49B1FB)));
    });
    return items;
  }(),
  currentIndex: _currentIndex,//当前下标
  onTap: (position) {
    //点击回调
    _currentIndex = position;
    print(position);
  },
);