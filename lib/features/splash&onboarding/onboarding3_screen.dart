import 'package:flutter/material.dart';
import 'onboardingpage.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      imagePath: "assets/icons/Group 227.svg",
      title: "قم بتمكين تجربة التعلم الخاصة بك",
      description: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص.\n"
          "هذا النص هو مثال لنص يمكن.",
      activeIndex: 0,
      showSkip: false,
    );
  }
}
