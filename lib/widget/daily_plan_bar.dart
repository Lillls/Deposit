import 'package:deposit/diaplay/my_colors.dart';
import 'package:flutter/material.dart';

class DailyPlanBar extends StatefulWidget {
  final int planId;

  @override
  State<StatefulWidget> createState() => DailyPlanBarState();

  DailyPlanBar({this.planId});
}

class DailyPlanBarState extends State<DailyPlanBar> {
  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        width: (MediaQuery.of(context).size.width - 50),
        height: 100,
        decoration: BoxDecoration(
            color: MyColors.pink_50,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                color: MyColors.pink_50,
                blurRadius: 10.0,
                spreadRadius: -2.0,
              ),
            ]),
        child: Column(
          children: <Widget>[
            _buildModel(),
          ],
        ));
  }

  Widget _buildModel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            "小小❤每日存钱计划",
            //style: TextStyle(color: Colors.bl),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(3),
          child: Text(
            "模式一",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
