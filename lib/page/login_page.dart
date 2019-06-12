import 'package:deposit/diaplay/my_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  //用户名输入框的控制器
  TextEditingController _userNameController = new TextEditingController();

  //密码输入框的控制器
  TextEditingController _userPasswordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.only(top: kToolbarHeight),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: 250,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 80),
          ),
          TextField(
            controller: _userNameController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: '请输入手机号',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          TextField(
            obscureText: true,
            controller: _userPasswordController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: '请输入密码',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 250,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              onPressed: _signIn,
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.black),
              ),
              color: MyColors.pink_50,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: _forgetPwd,
                child: Text(
                  "忘记密码?",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              GestureDetector(
                onTap: _signUp,
                child: Text(
                  "新用户注册",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _forgetPwd() {

  }

  void _signUp() {

  }

  void _signIn() async {

  }

}
