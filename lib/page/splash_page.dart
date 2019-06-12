import 'package:deposit/diaplay/my_colors.dart';
import 'package:deposit/diaplay/theme.dart';
import 'package:deposit/model/plan_detail_model.dart';
import 'package:deposit/model/plan_model.dart';
import 'package:deposit/model/record_model.dart';
import 'package:deposit/network/api_constants.dart';
import 'package:deposit/network/http_client.dart';
import 'package:deposit/page/main_page.dart';
import 'package:deposit/widget/loading_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    checkDatabase();
  }

  @override
  Widget build(BuildContext context) {
    screenInfo = new ScreenInfo(
      w: MediaQuery
          .of(context)
          .size
          .width,
      h: MediaQuery
          .of(context)
          .size
          .height,
      top: MediaQuery
          .of(context)
          .padding
          .top,
      pixelRatio: MediaQuery
          .of(context)
          .devicePixelRatio,
    );

    return Scaffold(
      body: Container(
        color: MyColors.appThemeColor,
        height: screenInfo.h,
        width: screenInfo.w,
        child: LoadingWidget.large(),
      ),
    );
  }

  void _doNavigation(List<PlanModel> list) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) =>
            MyHomePage(
              modelList: list,
            ),
      ),
          (route) => route == null,
    );
  }

  void checkDatabase() async {
    RecordModel recordModel = RecordModel.fromJson(
        await httpPost(ApiConstants.TODAY_RECORD, body: {"planId": 999}));
    PlanDetailModel planDetailModel = PlanDetailModel.fromJson(
        await httpPost(ApiConstants.PLAN_DETAIL, body: {"planId": 999}));
    PlanModel planModel = new PlanModel(planDetailModel, recordModel);

    _doNavigation([planModel]);
  }
}
