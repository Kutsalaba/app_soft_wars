import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomMainGradient extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height), [
      const Color(0xffA9A9A9).withOpacity(1),
      const Color(0xff383838).withOpacity(1)
    ], [
      0,
      1,
    ]);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
