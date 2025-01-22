import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/core/utils/colors.dart';

class OnboardingTwo extends StatefulWidget {
  OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  int selected_index = 0;
  final PageController _controller = PageController();
  static const List<String> words = const [
    "We provide high quality products just for you",
    "Your satisfaction is our number one priority",
    "Let's fulfill your house needs with Funica right now!",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) => setState(() {
            selected_index = index;
          }),
          children: [
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_2.png'),
              fit: BoxFit.cover,
            ),
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_3.png'),
              fit: BoxFit.cover,
            ),
            Image(
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/onboarding/onboarding_4.png'),
              fit: BoxFit.cover,
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: 428,
            height: 370,
            padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32),
              ),
            ),
            child: Text(
              words[selected_index],
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontSize: 40,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          child: Container(
            width: 60,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(
                words.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 4,
                  width: selected_index == index ? 28 : 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: selected_index == index
                        ? AppColor.mainpagetextcolor
                        : AppColor.containerbordercolor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: ElevatedButton(
            onPressed: () {
             selected_index == 2? context.go("/royxatdanotish"): Navigator.of(context).pop;
              _controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            child: Text(
              selected_index == 2 ? "Boshlash" : "Keyingisi",
              style: TextStyle(
                color: AppColor.containerinsidetextcolor,
                fontWeight: FontWeight.bold,
                fontFamily: "Urbanist",
                fontSize: 16,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                AppColor.mainpagetextcolor,
              ),
              fixedSize: MaterialStateProperty.all(
                Size(
                  380,
                  58,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
