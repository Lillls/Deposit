import 'package:deposit/page/CMColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
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
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      stops: [
        0.5,
        2,
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Container(
        color: CMColors.bg_dark_500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            _buildTop(),
            _buildBottomButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildTopLeft(screenWidth, screenHeight),
        Padding(padding: EdgeInsets.only(left: 10)),
        _buildTopRight(screenWidth, screenHeight)
      ],
    );
  }

  Widget _buildTopLeft(double screenWidth, double screenHeight) {
    return GestureDetector(
      onTap: _change,
      child: Container(
        width: 180,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: flag ? selectLinearGradient : unSelectLinearGradient,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.0343),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "¥299",
                    style: flag ? selectMonthlyMiddle2 : unSelectMonthlyMiddle2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      "/mo",
                      style: flag ? selectMonthlyMiddle : unSelectMonthlyMiddle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.11),
              color: CMColors.fg_ondark_10pa,
              width: screenWidth * 0.328,
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.125),
              child: Text(
                "Monthly",
                style: flag ? selectTextStyle : unSelectTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTopRight(double screenWidth, double screenHeight) {
    return GestureDetector(
      onTap: _change,
      child: Container(
        width: 180,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: !flag ? selectLinearGradient : unSelectLinearGradient,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.0343),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "¥299",
                    style:
                        !flag ? selectMonthlyMiddle2 : unSelectMonthlyMiddle2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      "/mo",
                      style:
                          !flag ? selectMonthlyMiddle : unSelectMonthlyMiddle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.11),
              color: CMColors.fg_ondark_10pa,
              width: screenWidth * 0.328,
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.125),
              child: Text(
                "Monthly",
                style: !flag ? selectTextStyle : unSelectTextStyle,
              ),
            ),
            Positioned(
              right: 1,
              top: 1,
              child: Container(
                color: CMColors.primary_500,
                child: Text("60%"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton() {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
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
        child: Text(
          "继续",
          style: TextStyle(
            color: CMColors.fg_ondark,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _change() {
    setState(() {
      flag = !flag;
    });
  }
}
