import 'package:flutter/material.dart';

class LoginClipper extends CustomClipper<Path> {
  final path = Path();

  @override
  Path getClip(Size size) {
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
    path.arcToPoint(Offset(x / 2, 45),
        clockwise: false, radius: Radius.circular(180));
    path.lineTo(60, 25);
    path.arcToPoint(Offset(0, 70),
        clockwise: false, radius: Radius.circular(50));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
