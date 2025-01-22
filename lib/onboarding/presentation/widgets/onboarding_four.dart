import 'package:flutter/material.dart';

class OnboardingFour extends StatelessWidget {
  const OnboardingFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('assets/images/onboarding/onboarding_4.png'),
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
