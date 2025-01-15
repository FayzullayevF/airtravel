import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class BatafsilContainer extends StatelessWidget {
  const BatafsilContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColor.mainpagetextcolor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: AppColor.containerinsidetextcolor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Urbanist,'),
        ),
      ),
    );
  }
}
