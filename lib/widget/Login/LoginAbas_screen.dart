import 'package:flutter/material.dart';

class LoginAbas extends StatelessWidget {
  final Size dimesionDevice;
  final CustomPainter painter;
  final CustomClipper<Path> clipper;
  final Color color;

  const LoginAbas({
    @required this.dimesionDevice,
    @required this.painter,
    @required this.clipper,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 10,
      left: 10,
      bottom: 10,
      child: CustomPaint(
        painter: painter,
        child: ClipPath(
          clipper: clipper,
          child: Container(
            height: (dimesionDevice.height * 0.65),
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
