import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class IkkiNuqtaText extends StatelessWidget {
  const IkkiNuqtaText({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.timecontainertext,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        fontFamily: "Urbanist",
      ),
    );
  }
}
