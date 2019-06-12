import 'package:deposit/page/CMColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPage3State();
}

class _DemoPage3State extends State<DemoPage3> {
  final selectMonthlyTop = const TextStyle(
      color: CMColors.fg_ondark,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto");

  final unSelectMonthlyTop = const TextStyle(
      color: CMColors.fg_ondark_40pa,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto");

  final selectMonthlyMiddle = const TextStyle(
      color: CMColors.fg_ondark,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      fontFamily: "Roboto");

  final unSelectMonthlyMiddle = const TextStyle(
      color: CMColors.fg_ondark_40pa,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      fontFamily: "Roboto");

  final selectMonthlyMiddle2 = const TextStyle(
      color: CMColors.fg_ondark,
      fontSize: 22,
      fontWeight: FontWeight.normal,
      fontFamily: "Roboto");

  final unSelectMonthlyMiddle2 = const TextStyle(
      color: CMColors.fg_ondark_40pa,
      fontSize: 22,
      fontWeight: FontWeight.normal,
      fontFamily: "Roboto");

  final selectYearlyBig = const TextStyle(
    color: CMColors.fg_ondark,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontFamily: "Roboto",
  );

  final unSelectYearlyBig = const TextStyle(
      color: CMColors.fg_ondark_40pa,
      fontSize: 22,
      fontWeight: FontWeight.bold);

  final selectYearlySmall = const TextStyle(
    color: CMColors.fg_ondark,
    fontSize: 11,
    fontWeight: FontWeight.bold,
    fontFamily: "Roboto",
  );

  final unSelectYearlySmall = const TextStyle(
    color: CMColors.fg_ondark_40pa,
    fontSize: 11,
    fontWeight: FontWeight.bold,
    fontFamily: "Roboto",
  );

  final unSelectTextStyle = const TextStyle(
    color: CMColors.fg_ondark_40pa,
    fontSize: 11,
    fontWeight: FontWeight.normal,
    fontFamily: "Roboto",
  );

  final selectTextStyle = const TextStyle(
    color: CMColors.fg_ondark,
    fontSize: 11,
    fontWeight: FontWeight.normal,
    fontFamily: "Roboto",
  );

  final adsFreeExperienceDesc = const TextStyle(
    fontSize: 12,
    color: CMColors.fg_ondark_60pa,
    fontWeight: FontWeight.normal,
    fontFamily: "Roboto",
  );

  final unSelectLinearGradient = LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      stops: [
        1
      ],
      colors: [
        CMColors.bg_dark_300,
      ]);

  final selectLinearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.5,
        0.8,
        1
      ],
      colors: [
        CMColors.grad_purple_start,
        CMColors.purple_500,
        CMColors.grad_purple_end,
      ]);

  var flag = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(""),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buildTop(),
            _buildBottom(),
            Hero(tag: 1111, child: Text(""))
          ],
        ),
      ),
    );
  }

  _buildTop() {
    return Row(
      children: <Widget>[
        _buildLeft(),
        _buildRight(),
      ],
    );
  }

  _buildBottom() {
    return Container(
      width: 400,
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.3,
              1
            ],
            colors: [
              CMColors.secondary_300,
              CMColors.barbie_pink,
              CMColors.purpleish_blue,
            ]),
      ),
      child: Text("继续"),
    );
  }

  _buildLeft() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 180,
            height: 100,
            decoration: BoxDecoration(
                gradient: selectLinearGradient,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("111111"),
                      Text("/22222"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  height: 1,
                  width: 150,
                  color: CMColors.white,
                ),
                Container(
                  child: Text("111111"),
                  padding: EdgeInsets.only(top: 20),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 1,
          child: Container(
            child: Text("60%OFF"),
            color: CMColors.primary_500,
          ),
        ),
      ],
    );
  }

  _buildRight() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 180,
            height: 100,
            decoration: BoxDecoration(
                gradient: selectLinearGradient,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("111111"),
                      Text("/22222"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  height: 1,
                  width: 150,
                  color: CMColors.white,
                ),
                Container(
                  child: Text("111111"),
                  padding: EdgeInsets.only(top: 20),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 1,
          child: Container(
            child: Text("60%OFF"),
            color: CMColors.primary_500,
          ),
        ),
      ],
    );
  }
}
