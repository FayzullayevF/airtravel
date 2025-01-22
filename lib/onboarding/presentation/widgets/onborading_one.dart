import 'package:flutter/material.dart';

class OnboradingOne extends StatefulWidget {
  const OnboradingOne({super.key});

  @override
  State<OnboradingOne> createState() => _OnboradingOneState();
}

class _OnboradingOneState extends State<OnboradingOne> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          image: AssetImage(
            'assets/images/onboarding/onboarding_1.png',
          ),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.black.withValues(alpha: 0.7),
                Colors.transparent
              ])),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Welcome to ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist",
                  fontSize: 48,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "AirTravel",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Urbanist",
                    fontSize: 64,
                    decoration: TextDecoration.none,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "The best furniture e-commerce app of the century for your daily needs!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Urbanist",
                  decoration: TextDecoration.none,
                  fontSize: 18,

                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
