import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/onBoarding_screen.dart';
import './themeData.dart';
import 'Provider/onBoarding_provider.dart';
import 'screens/Login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: OnBoardingProvider(),
      child: MaterialApp(
        title: 'RUPE',
        initialRoute: 'onBoardingScree3n',
        theme: ThemeDataCustom.themeDataLight,
        routes: {
          'onBoardingScree3n': (context) => OnBoardingScreen(),
          Login.route: (context) => Login(),
        },
      ),
    );
  }
}
