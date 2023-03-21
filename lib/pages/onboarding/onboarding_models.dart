import 'package:flutter/material.dart';

class OnboardingModels {
  String title;
  String desc;
  String textImage;

  OnboardingModels({
    required this.title,
    required this.desc,
    required this.textImage,
  });
}

List<OnboardingModels> screens = <OnboardingModels>[
  OnboardingModels(
    title: 'Browse your menu and order directly',
    desc: 'Our app can send you anywhere, even space. For \$2.99 per month',
    textImage: 'images/onboarding4.png',
  ),
  OnboardingModels(
    title: 'Even to the space with us! Together',
    desc: 'Our app can send you anywhere, even space. For \$2.99 per month',
    textImage: 'images/onboarding1.jpg',
  ),
  OnboardingModels(
    title: 'Pick up delivery at your door',
    desc: 'Our app can send you anywhere, even space. For \$2.99 per month',
    textImage: 'images/onboarding3.jpg',
  ),
  OnboardingModels(
    title: 'Enjoy our pleasant meal',
    desc: 'Our app can send you anywhere, even space. For \$2.99 per month',
    textImage: 'images/onboarding2.jpg',
  ),
];
