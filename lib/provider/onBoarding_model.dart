import 'package:flutter/foundation.dart';

class OnBoardingModel with ChangeNotifier {
  String image;
  String title;
  String description;

  OnBoardingModel({
    @required this.image,
    @required this.title,
    @required this.description,
  });
}
