import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends CustomPainter {
  final double stokeWidth;
  final double value;
  final Color valueColor;
  final Color backgroundColor;
  Paint backgroundPaint;
  Paint valuePaint;

  CustomLinearProgressIndicator(
      {this.stokeWidth, this.value, this.valueColor, this.backgroundColor}) {
    //background paint
    backgroundPaint = new Paint()
      ..color = backgroundColor
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = stokeWidth
      ..style = PaintingStyle.stroke;
    //value paint
    valuePaint = new Paint()
      ..color = valueColor
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = stokeWidth
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    //绘制背景
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), backgroundPaint);
    //绘制进度
    canvas.drawLine(Offset(0, 0), Offset(size.width * value, 0), valuePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
