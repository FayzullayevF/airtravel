import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/discount_container.dart';
import 'package:treval_app/homepage/presentation/widgets/shoshiling_item.dart';
import 'package:treval_app/homepage/presentation/widgets/texts_main.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 634,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.shoshilingcontainer1,
            AppColor.shoshilingcontainer2,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 25,
              right: 17,
            ),
            child: ShoshilingItem(),
          ),
          SizedBox(height: 25,),
          DiscountContainer(makka_photo: "assets/images/offers/offers_1.png"),
        ],
      ),
    );
  }
}
