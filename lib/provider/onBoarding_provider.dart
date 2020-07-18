import 'package:flutter/foundation.dart';
import '../Provider/onBoarding_model.dart';

class OnBoardingProvider with ChangeNotifier {
  List<OnBoardingModel> _slides = [
    OnBoardingModel(
      description: 'texto com descrição a ser preenchido',
      image: 'assets/images/eating_together.png',
      title: 'Titulo a ser preenchido',
    ),
    OnBoardingModel(
      description: 'texto com descrição a ser preenchido',
      image: 'assets/images/eating_together.png',
      title: 'Titulo a ser preenchido',
    ),
    OnBoardingModel(
      description: 'texto com descrição a ser preenchido',
      image: 'assets/images/eating_together.png',
      title: 'Titulo a ser preenchido',
    ),
  ];

  List<OnBoardingModel> get slides {
    return [..._slides];
  }
}
