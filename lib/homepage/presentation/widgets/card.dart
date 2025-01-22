import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

import 'navigation_bar.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go("/");
          },
          icon: SvgPicture.asset("assets/icons/back-arrow.svg"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage("assets/images/offers/credit_card.png"),
                width: 100,
                height: 80,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Cards page not found!",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: AppColor.mainpagetextcolor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontFamily: "Urbanist",
              ),
            )
          ],
        ),
      ),
    );
  }
}
