import 'package:deposit/diaplay/my_colors.dart';
import 'package:deposit/model/plan_detail_model.dart';
import 'package:deposit/model/record_model.dart';
import 'package:deposit/network/api_constants.dart';
import 'package:deposit/network/http_client.dart';
import 'package:deposit/widget/custom_linear_progress_indicator.dart';
import 'package:deposit/widget/line_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyPlanDetail extends StatefulWidget {
  final PlanDetailModel planDetailModel;
  final RecordModel recordModel;

  @override
  State<StatefulWidget> createState() => DailyPlanDetailState();

  DailyPlanDetail({this.recordModel, this.planDetailModel}) {}
}

class DailyPlanDetailState extends State<DailyPlanDetail> {
  PlanDetailModel _planDetailModel;
  RecordModel _recordModel;

  @override
  void initState() {
    _planDetailModel = widget.planDetailModel;
    _recordModel = widget.recordModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
            color: MyColors.appThemeColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 10),
                color: MyColors.appThemeColor,
                blurRadius: 15.0,
                spreadRadius: -2.0,
              ),
            ]),
        width: (MediaQuery
            .of(context)
            .size
            .width - 50),
        height: 450,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30)),
            _buildTodayDetail(),
            Padding(padding: EdgeInsets.only(top: 30)),
            _buildPlanDetail(),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayDetail() {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CustomPaint(
                  size: Size(10, 30),
                  painter: LinePainter(width: 5, height: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "今日存储详情",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        _recordModel.data.isSaved == 1
            ? Container(
          height: 100,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image:
                new AssetImage('assets/ic_detail_status_saved.png'),
                width: 80,
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  "今日小目标 ${_recordModel.data.money/100} 元\n已经完成,继续保持!",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        )
            : Container(
          height: 100,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image:
                new AssetImage('assets/ic_detail_status_unsave.png'),
                width: 80,
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 25),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "今日小目标:",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${_recordModel.data.money/100}元",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        child: Text(
                          "点击确定存储",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          _showDialog();
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }

  Widget _buildPlanDetail() {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CustomPaint(
                  size: Size(10, 30),
                  painter: LinePainter(width: 5, height: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "小目标详情",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image:
                        new AssetImage('assets/ic_detail_value_money.png'),
                        width: 22,
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            "${_planDetailModel.data
                                .savedMoney/100}/${_planDetailModel.data
                                .totalMoney/100}"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: CustomPaint(
                    size: Size(300, 8),
                    painter: CustomLinearProgressIndicator(
                      backgroundColor: Colors.blueGrey[100],
                      valueColor: MyColors.green_200,
                      stokeWidth: 8,
                      value: _planDetailModel.data.savedMoney /
                          _planDetailModel.data.totalMoney,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image:
                        new AssetImage('assets/ic_detail_value_date.png'),
                        width: 22,
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            "${_planDetailModel.data
                                .passDays}/${_planDetailModel.data.totalDays}"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 20),
                  child: CustomPaint(
                    size: Size(300, 8),
                    painter: CustomLinearProgressIndicator(
                      backgroundColor: Colors.blueGrey[100],
                      valueColor: MyColors.green_200,
                      stokeWidth: 8,
                      value: _planDetailModel.data.passDays /
                          _planDetailModel.data.totalDays,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10))),
      ],
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("确定存储"),
          content: new Text("一定要存完再点确定哦,不能自欺欺人"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("马上去存"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("真的存过了"),
              onPressed: () {
                _saveMoney(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _saveMoney(BuildContext context) async {
    httpPost(ApiConstants.SAVE_MONEY, body: {"id": _recordModel.data.id});
    _recordModel.data.isSaved = 1;
    _planDetailModel.data.savedMoney += _recordModel.data.money;
    setState(() {});
    Navigator.of(context).pop();
  }
}
