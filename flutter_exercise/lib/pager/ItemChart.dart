import 'package:flutter/material.dart';

class ItemChart extends StatefulWidget {
  final ChartBean chartBean;

  ItemChart({Key key, this.chartBean}) : super(key: key);

  @override
  _ItemChartState createState() => _ItemChartState();
}

class _ItemChartState extends State<ItemChart> {
  bool _checked;//是否已查看
  ChartBean _chartBean;//条目描述类
  @override
  Widget build(BuildContext context) {

    var left = Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: widget.chartBean.image,
      )
    );

    var body = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[Padding(padding: EdgeInsets.only(right: 10),child: _checked?left:leftWrap,), Expanded(child: center,), right],
    );
    return Container(
      child: body,
    );
  }
}

class ChartBean {
  Image image; //头像
  String name; //名字
  String sentence; //句子
  String time; //时间
  bool shield; //是否屏蔽

  ChartBean(
      {this.image, this.name, this.sentence, this.time, this.shield = false});
}
