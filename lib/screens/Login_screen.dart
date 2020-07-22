import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:rupe/widget/Login/LoginClipper.dart';
import 'package:rupe/widget/Login/LoginShadownPaint.dart';
import 'package:rupe/widget/Login/SingUpClipper.dart';
import 'package:rupe/widget/Login/SingUpShadownPaint.dart';
import 'package:rupe/themeData.dart';
import '../widget/Login/LoginAbas_screen.dart';

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
            color: ThemeDataCustom.mySecundaryColor[400],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 300,
                height: dimesionDevice.height * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // inserir fonte local para usar text como const
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
                    // inserir fonte local para usar text como const
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
                      height: dimesionDevice.height * 0.7,
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              LoginAbas(
                                color: Colors.red,
                                dimesionDevice: dimesionDevice,
                                clipper: SingUpClipper(),
                                painter: SingUpShadownPaint(),
                              ),
                            ],
                          ),
                          LoginAbas(
                            color: Colors.purple,
                            dimesionDevice: dimesionDevice,
                            clipper: LoginClipper(),
                            painter: LoginShadownPaint(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: dimesionDevice.height * 0.08,
                top: dimesionDevice.height * 0.04,
                child: const Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.blue,
                  size: 16,
                ),
              ),
              Positioned(
                right: dimesionDevice.height * 0.12,
                top: dimesionDevice.height * 0.12,
                child: const Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.blue,
                  size: 12,
                ),
              ),
              Positioned(
                left: dimesionDevice.height * 0.12,
                top: dimesionDevice.height * 0.13,
                child: const Icon(
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
