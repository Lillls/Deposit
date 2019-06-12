import 'package:deposit/page/CMColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPage2State();
}

class _DemoPage2State extends State<DemoPage2> {
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
      body: Column(
        children: <Widget>[
          //buildText(),
          buildButton(),
          //buildImage(),
          //buildIcon(),
        ],
      ),
    );
  }


  Icon buildIcon() => Icon(
        Icons.favorite,
        color: CMColors.primary_500,
      );

  ///  this.width, //图片的宽 一般设置一个就可以 另一个会比例自动缩放
  ///  this.height, //图片高度
  ///  this.fit,//缩放模式
  ///  this.alignment = Alignment.center, //对齐方式
  ///  this.repeat = ImageRepeat.noRepeat, //重复方式
  ///  当图片本身大小小于显示空间时，指定图片的重复规则
  Widget buildImage() {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage("assets/ic_detail_status_saved.png"),
          width: 100.0,
          fit: BoxFit.fitHeight,
        ),
        Image(
          image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
          width: 1000.0,
          height: 200,
          repeat: ImageRepeat.repeatX,
          //alignment: Alignment.center,
        ),
      ],
    );
  }

  ///this.textColor, //按钮文字颜色
  ///  this.disabledTextColor, //按钮禁用时的文字颜色
  ///  this.color, //按钮背景颜色
  ///  this.disabledColor,//按钮禁用时的背景颜色
  ///  this.highlightColor, //按钮按下时的背景颜色
  ///  this.splashColor, //点击时，水波动画中水波的颜色
  ///  this.colorBrightness,//按钮主题，默认是浅色主题
  ///  this.padding, //按钮的填充
  RaisedButton buildButton() {
    return RaisedButton(
      child: Image.asset("assets/ic_detail_status_saved.png"),
      //如果不设置点击事件按钮就会变为不可点击状态
      onPressed: () => {},
      textColor: CMColors.bg_dark_100,
      splashColor: CMColors.bg_dark_100,
      color: CMColors.white,
      highlightColor: CMColors.secondary_300,
      disabledColor: CMColors.grad_purple_start,
    );
  }

  Text buildText() {
    return Text(
      "我" * 10,
      maxLines: 1,
      overflow: TextOverflow.fade,
      textScaleFactor: 2, //缩放
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: "Roboto",
        color: Colors.red,
      ),
    );
  }
}
