import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String imageData;
  final String title;
  final String description;

  const OnBoardingWidget({
    this.imageData,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageData),
          SizedBox(
            height: 60,
          ),
          Text(title),
          SizedBox(
            height: 60,
          ),
          Text(description)
        ],
      ),
    );
  }
}
