import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/onBoarding_model.dart';

class OnBoardingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final view = Provider.of<OnBoardingModel>(
      context,
      listen: false,
    );
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Image.asset(view.image),
          SizedBox(
            height: 20,
          ),
          Text(view.title),
          SizedBox(
            height: 20,
          ),
          Text(view.description)
        ],
      ),
    );
  }
}
