import 'dart:ui';

import 'package:deposit/diaplay/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final double width;
  final double height;
  Paint _paint;

  LinePainter({@required this.width, @required this.height}) {
    _paint = new Paint()
      ..color = MyColors.green_200
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;
  }

  ///Flutter中负责View绘制的地方，使用传递来的canvas和size即可完成对目标View的绘制
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0, 0), Offset(0, height), _paint);
  }

  ///控制自定义View是否需要重绘的，返回false代表这个View在构建完成后不需要重绘。
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
