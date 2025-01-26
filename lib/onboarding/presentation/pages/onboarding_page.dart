import 'package:flutter/material.dart';
import 'package:treval_app/onboarding/presentation/widgets/onboarding_two.dart';
import 'package:treval_app/onboarding/presentation/widgets/onborading_one.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboradingOne(),
          OnboardingTwo(),
        ],
      ),
    );
  }
}
