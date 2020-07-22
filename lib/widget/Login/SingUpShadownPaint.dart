import 'package:flutter/material.dart';

class SingUpShadownPaint extends CustomPainter {
  final path = Path();
  double radius = 40;

  @override
  void paint(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    path.moveTo(0, y / 2);
    path.lineTo(0, y - 70);
    path.arcToPoint(Offset(70, y),
        clockwise: false, radius: Radius.circular(70));
    path.lineTo(x - 70, y);
    path.arcToPoint(Offset(x, y - 70),
        clockwise: false, radius: Radius.circular(70));
    path.lineTo(x, 70);
    path.arcToPoint(Offset(x - 60, 25),
        clockwise: false, radius: Radius.circular(50));
    path.lineTo(x / 2, 48);
    path.arcToPoint(Offset(0, y / 2),
        clockwise: false, radius: Radius.circular(200));
    return canvas.drawShadow(path, Colors.grey, 5, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
