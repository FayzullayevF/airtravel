import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class SixContainer extends StatelessWidget {
  const SixContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Container(
          width: 29,
          height: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.mainpagetextcolor,
          ),
          child: Center(
            child: Text(
              "6 +",
              style: TextStyle(
                color: AppColor.containerinsidetextcolor,
                fontFamily: 'Urbanist',
                fontSize: 10,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ),
      ),
    );
  }
}
