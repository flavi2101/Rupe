import 'package:flutter/material.dart';

class ThemeDataCustom {
  static const Color primary = Color(0xFF790CF5);
  static const Color secundary = Color(0xFF5AFA00);
  static const Color black = Color(0xFF363438);
  static const Color white = Color(0xFFDED8E5);
  static const Color aviso_green = Color(0xFFA0E39F);
  static const Color aviso_red = Color(0xFFE39898);

  static const myPrimaryColor = MaterialColor(0xFF790CF5, <int, Color>{
    300: Color.fromRGBO(156, 51, 255, 100),
    400: Color.fromRGBO(138, 36, 255, 100),
    500: Color(0xFF790CF5),
    600: Color.fromRGBO(112, 7, 232, 100),
    700: Color.fromRGBO(102, 0, 219, 100),
  });

  static const mySecundaryColor = MaterialColor(0xFF5AFA00, <int, Color>{
    300: Color.fromRGBO(134, 252, 50, 100),
    400: Color.fromRGBO(118, 255, 33, 100),
    500: Color(0xFF5AFA00),
    600: Color.fromRGBO(84, 217, 7, 100),
    700: Color.fromRGBO(68, 204, 0, 100),
  });

  static const myBlack = MaterialColor(0xFF363438, <int, Color>{
    400: Color.fromRGBO(77, 77, 77, 100),
    500: Color(0xFF363438),
    600: Color.fromRGBO(35, 33, 38, 100),
  });

  static const myWhite = MaterialColor(0xFFDED8E5, <int, Color>{
    400: Color.fromRGBO(235, 228, 242, 100),
    500: Color(0xFFDED8E5),
    600: Color.fromRGBO(194, 188, 204, 100),
  });

  static final _themeDataLight = ThemeData(
    primaryColor: primary,
    accentColor: secundary,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.amber,
      ),
    ),
  );

  static ThemeData get themeDataLight => _themeDataLight;
}
