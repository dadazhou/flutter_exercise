import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var row_test = Row(
  children: <Widget>[
    Expanded(
      child: Text('绝域从军计惘然，'),
    ),
    Expanded(
      child: Text('东南幽恨满词笺。'),
    ),
    Expanded(
      child: Text('一箫一剑平生意，'),
    ),
    Expanded(
      child: Text('负尽狂名十五年。'),
    ),
  ],
);
var container_test = Container(
  color: Colors.lime,
  height: 100,
  width: 200,
  child: Text("哒哒粥"),
  margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
  padding: EdgeInsets.all(40),
);

var padding_test = Container(
  color: Color.fromARGB(100, 81, 211, 253),
  height: 150,
  width: 250,
  child: Padding(
    padding: EdgeInsets.all(10),
    child: Text("哒哒粥"),
  ),
);

var center_test = Container(
  color: Color.fromARGB(100, 81, 211, 253),
  height: 150,
  width: 250,
  child: Center(
    child: Text("哒哒粥"),
  ),
);

var stack_test = Container(
  color: Color.fromARGB(100, 81, 211, 253),
  height: 150,
  width: 250,
  child: Stack(
    alignment: Alignment.centerLeft,
    children: <Widget>[
      Text('绝域从军计惘然，'),
      Align(
        alignment: Alignment.topRight,
        widthFactor: 1.5,
        child: Card(
          elevation: 10,
          color: Color(0xffffffff),
          child: Text('东南幽恨满词笺。'),
        ),
      ),
      Text('一萧一剑平生意，'),
      Text('负尽狂名十五年。'),
    ],
  ),
);

var index_stack_test = Container(
  color: Color.fromARGB(100, 81, 211, 253),
  height: 150,
  width: 250,
  child: IndexedStack(
    index: 0,
    alignment: Alignment.centerLeft,
    children: <Widget>[
      Text('绝域从军计惘然，'),
      Align(
        alignment: Alignment.topRight,
        widthFactor: 1.5,
        child: Card(
          elevation: 10,
          color: Color(0xffffffff),
          child: Text('东南幽恨满词笺。'),
        ),
      ),
      Text('一萧一剑平生意，'),
      Text('负尽狂名十五年。'),
    ],
  ),
);

var index_transform = Transform(
  origin: Offset(0, 150),
  transform: Matrix4.rotationZ(3.1415 / 4),
  child: Card(
    elevation: 10,
    color: Color(0xffffffff),
    child: Text('东南幽恨满词笺。'),
  ),
);

var table_test = Table(
  columnWidths: const <int, TableColumnWidth>{
    0: FixedColumnWidth(60.0),
    1: FixedColumnWidth(100.0),
    2: FixedColumnWidth(100.0),
    3: FixedColumnWidth(80.0),
  },
  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  border: TableBorder.all(
      color: Color(0xff16DAF1), width: 1.0, style: BorderStyle.solid),
  children: const <TableRow>[
    TableRow(
      children: <Widget>[
        Center(
          child: Text('姓名'),
        ),
        Center(
          child: Text('年龄'),
        ),
        Center(
          child: Text('称号'),
        ),
        Center(
          child: Text('武器'),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text('捷特'),
        Text('24'),
        Text('风神'),
        Text('黑风剑'),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text('巫缨'),
        Text('23'),
        Text('百里巫缨'),
        Text('百里弓'),
      ],
    ),
    TableRow(
      children: <Widget>[
        Text('龙少'),
        Text('23'),
        Text('控尊'),
        Text('控尊戒'),
      ],
    ),
  ],
);

bg(Widget w, [Color color]){
  return Container(color: color ?? slRandomColor(),child: w,);
}

//随机颜色
Color slRandomColor({int r = 255, int g = 255, int b = 255, a = 255}) {
  if (r == 0 || g == 0 || b == 0) return Colors.black;
  if (a == 0) return Colors.white;
  return Color.fromARGB(
    a,
    r != 255 ? r : Random.secure().nextInt(r),
    g != 255 ? g : Random.secure().nextInt(g),
    b != 255 ? b : Random.secure().nextInt(b),
  );
}

formColorList(int count) {
  var random = new Random();
  var li = <Widget>[];

  for (int i = 0; i < count; i++) {
    li.add(new Container(
      width: 100 * (random.nextDouble() + 0.3),
      height: 30,
      color: slRandomColor(),
    ));
  }
  return li;
}

var flow_test = Flow(
  delegate: MarginFlowDelegate(EdgeInsets.all(0.5)),
  children: formColorList(60),
);

class MarginFlowDelegate extends FlowDelegate {
  EdgeInsets _matgin = EdgeInsets.zero; //成员变量_margin
  MarginFlowDelegate(this._matgin);

  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
    var offsetx = _matgin.left;
    var offsetY = _matgin.right;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + offsetx + _matgin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(offsetx, offsetY, 0.0));
        offsetx = w + _matgin.left;
      } else {
        offsetx = _matgin.left;
        offsetY +=
            context.getChildSize(i).height + _matgin.top + _matgin.bottom;
        context.paintChild(i,
            transform: new Matrix4.translationValues(offsetx, offsetY, 0.0));
        offsetx += context.getChildSize(i).width + _matgin.left + _matgin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}

var wrap_test = Wrap(
    spacing: 8.0,
    runSpacing: 4.0,
    direction: Axis.horizontal,
    alignment: WrapAlignment.spaceBetween,
    children: formColorList(50));

var list_view_test = ListView.builder(
    itemCount: 20,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text('toly $index'),
        ),
      );
    });

var list_view_test_hor = ListView.builder(
    itemCount: 20,
    padding: EdgeInsets.all(8.0),
    itemExtent: 60.0,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Center(
          child: Text('toly $index'),
        ),
      );
    });

//竖直GridView
var grid_view_test = GridView.count(
  crossAxisCount: 4,
  children: List.generate(
    100,
    (index) {
      return Card(
        child: Center(
          child: Text('toly $index'),
        ),
      );
    },
  ),
);

//水平GridView
var grid_view_test_hor = GridView.count(
  crossAxisCount: 4,
  scrollDirection: Axis.horizontal,
  children: List.generate(
    100,
    (index) {
      return Card(
        child: Center(
          child: Text('toly $index'),
        ),
      );
    },
  ),
);

var list_body_test = Column(
  children: <Widget>[
    ListBody(
      mainAxis: Axis.vertical,
      reverse: false,
      children: formColorList(5),
    )
  ],
);

var list_body_test_hor = Row(
  children: <Widget>[
    ListBody(
      mainAxis: Axis.horizontal,
      reverse: false,
      children: formColorList(5),
    )
  ],
);

formTextList(int count) {
  var random = new Random();
  var li = <Widget>[];

  for (int i = 0; i < count; i++) {
    li.add(new Baseline(
      baseline: 80,
      baselineType: TextBaseline.alphabetic,
      child: new Text(
        'Toly',
        style: new TextStyle(
          fontSize: 20.0 + random.nextInt(40),
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    ));
  }
  return li;
}

var base_line_test = new Row(
  children: formTextList(5),
);

var fsd_test = new Container(
  color: Colors.blue,
  height: 300.0,
  width: 300.0,
  child: new FractionallySizedBox(
    alignment: Alignment.bottomCenter,
    widthFactor: 1.5,
    heightFactor: 0.5,
    child: new Container(
      color: Colors.red,
    ),
  ),
);

var aspecttratio_test = new Container(
  width: 200.0,
  child: new AspectRatio(
    aspectRatio: 1.5,
    child: new Container(
      color: Colors.red,
    ),
  ),
);
