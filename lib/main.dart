import 'package:flutter/material.dart';
import './screens/home.dart';
import './themeData.dart';
import './screens/onBoarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    OnBoardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RUPE',
      initialRoute: 'home',
      theme: ThemeDataCustom.themeDataLight,
      routes: {
        'home': (context) => Home(),
      },
    );
  }
}
