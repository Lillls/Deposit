import 'package:deposit/diaplay/my_colors.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final double radius;
  final double storkWidth;

  LoadingWidget({
    this.title,
    this.titleStyle,
    this.radius,
    this.storkWidth,
  });

  factory LoadingWidget.large({String title}) => new LoadingWidget(
        title: title,
        radius: 32.0,
        storkWidth: 3.0,
      );

  factory LoadingWidget.medium({String title}) => new LoadingWidget(
        title: title,
        radius: 24.0,
        storkWidth: 2.5,
      );

  factory LoadingWidget.small({String title}) => new LoadingWidget(
        title: title,
        radius: 14.0,
        storkWidth: 2.0,
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircularProgressIndicator(
              strokeWidth: storkWidth ?? storkWidth,
              valueColor: new AlwaysStoppedAnimation(MyColors.green_200),
            ),
            (title != null)
                ? Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: new Text(
                      title,
                      style: titleStyle,
                    ),
                  )
                : new Container(),
          ],
        ),
      ),
    );
  }
}
