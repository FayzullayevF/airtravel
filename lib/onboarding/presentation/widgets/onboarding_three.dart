import 'package:flutter/material.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('assets/images/onboarding/onboarding_3.png'),
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
