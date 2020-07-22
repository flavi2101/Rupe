import 'package:flutter/material.dart';

class LoginShadownPaint extends CustomPainter {
  final path = Path();
  double radius = 40;

  @override
  void paint(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    path.moveTo(0, 0);
    path.lineTo(0, y - 70);
    path.arcToPoint(Offset(70, y),
        clockwise: false, radius: Radius.circular(70));
    path.lineTo(x - 70, y);
    path.arcToPoint(Offset(x, y - 70),
        clockwise: false, radius: Radius.circular(70));
    path.lineTo(x, y / 2);
    path.arcToPoint(Offset(x / 2, 50),
        clockwise: false, radius: Radius.circular(200));
    path.lineTo(60, 25);
    path.arcToPoint(Offset(0, 70),
        clockwise: false, radius: Radius.circular(50));
    return canvas.drawShadow(path, Colors.grey, 5, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
