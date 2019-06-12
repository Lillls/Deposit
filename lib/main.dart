import 'package:deposit/diaplay/my_colors.dart';
import 'package:deposit/page/login.dart';
import 'package:deposit/page/splash_page.dart';
import 'package:deposit/widget/cut_corners_border.dart';
import 'package:flutter/material.dart';
import 'package:notification_plugin/notification_plugin.dart';

void main() {
  NotificationPlugin.init(19, 0);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          inputDecorationTheme:
              const InputDecorationTheme(border: CutCornersBorder()),
          buttonColor: MyColors.appThemeColor,
          primaryColor: MyColors.appThemeColor,
          scaffoldBackgroundColor: Color(0XFFFAFAFA)),
      home: SplashPage(),
    );
  }
}
