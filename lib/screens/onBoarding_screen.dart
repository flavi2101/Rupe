import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/onBoarding_widget.dart';
import 'package:rupe/provider/onBoarding_provider.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnBoardingProvider(),
      child: PageView.builder(
          itemCount: null,
          itemBuilder: (context, index) {
            return OnBoardingWidget();
          }),
    );
  }
}
