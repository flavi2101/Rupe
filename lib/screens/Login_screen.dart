import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:rupe/themeData.dart';

class Login extends StatefulWidget {
  static final route = '/Login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final dimesionDevice = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: dimesionDevice.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ThemeDataCustom.mySecundaryColor[300],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 300,
                height: dimesionDevice.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome back',
                      style: GoogleFonts.roboto(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: dimesionDevice.height * 0.01,
                    ),
                    Text(
                      'Have a widget break \n lines or not',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: dimesionDevice.height * 0.02,
                    ),
                    Container(
                      height: dimesionDevice.height * 0.65,
                      width: double.infinity,
                      color: Colors.orangeAccent,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 20,
                            right: 10,
                            left: 10,
                            bottom: 10,
                            child: CustomPaint(
                              child: ClipPath(
                                clipper: LoginClipper(),
                                child: Container(
                                  height: (dimesionDevice.height * 0.65),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: dimesionDevice.height * 0.18,
                top: dimesionDevice.height * 0.06,
                child: Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.blue,
                  size: 16,
                ),
              ),
              Positioned(
                right: dimesionDevice.height * 0.12,
                top: dimesionDevice.height * 0.18,
                child: Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.blue,
                  size: 12,
                ),
              ),
              Positioned(
                left: dimesionDevice.height * 0.12,
                top: dimesionDevice.height * 0.19,
                child: Icon(
                  LineAwesomeIcons.close,
                  color: Colors.blue,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginClipper extends CustomClipper<Path> {
  Path path = Path();
  double radius = 40;

  @override
  Path getClip(Size size) {
    var x = size.width;
    var y = size.height;

    path.moveTo(0, 2 * radius);
    path.lineTo(0, y - radius);
    path.quadraticBezierTo(0, y, radius, y);
    path.lineTo(x - radius, y);
    path.quadraticBezierTo(x, y, x, y - radius);
    path.lineTo(x, radius);
    path.quadraticBezierTo(x, 0, x - (1.5 * radius), 0.25 * radius);
    path.lineTo(1.5 * radius, 1.3 * radius);
    path.quadraticBezierTo(0, 2 * radius, 0, 4 * radius);

    //     clockwise: false, radius: Radius.circular(radius));
    // path.lineTo(x, y - 180);
    // path.arcToPoint(Offset(x - radius, y - 180 - radius),
    //     clockwise: false, radius: Radius.circular(radius));

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
