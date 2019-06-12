import 'package:deposit/diaplay/my_colors.dart';
import 'package:deposit/model/plan_model.dart';
import 'package:deposit/model/record_model.dart';
import 'package:deposit/network/api_constants.dart';
import 'package:deposit/widget/daily_plan_detail.dart';
import 'package:flutter/material.dart';
import 'package:deposit/network/http_client.dart';

class MyHomePage extends StatefulWidget {
  final List<PlanModel> modelList;

  MyHomePage({Key key, @required this.modelList}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _planList;

  @override
  void initState() {
    super.initState();
    _planList = [
      DailyPlanDetail(
        planDetailModel: widget.modelList[0].planDetailModel,
        recordModel: widget.modelList[0].recordModel,
      ),
    ];
    _tabController = TabController(vsync: this, length: _planList.length);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("小小存钱计划"),
          Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(Icons.favorite, color: Colors.red))
        ]),
      ),
      body: Container(
        alignment: Alignment.center,
        child: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //DailyPlanBar(),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
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
            width: (MediaQuery.of(context).size.width - 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildPlanAction(asset: 'assets/ic_action_save_advant.png'),
                _buildPlanAction(asset: 'assets/ic_action_record.png'),
                _buildPlanAction(asset: 'assets/ic_action_finish.png'),
                _buildPlanAction(asset: 'assets/ic_action_delete_.png')
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: TabBarView(
                controller: _tabController,
                children: _planList,
              ),
            ),
          ),
        ]);
  }

  Widget _buildPlanAction({String asset, VoidCallback callback}) {
    return GestureDetector(
      child: Image.asset(
        asset,
        width: 60,
        height: 60,
      ),
      onTap: callback,
    );
  }
}
