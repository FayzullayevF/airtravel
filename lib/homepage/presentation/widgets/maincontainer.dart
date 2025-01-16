import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/homepage_main_image.dart';
import 'package:treval_app/homepage/presentation/widgets/shoshiling_inside_container.dart';
import 'package:treval_app/homepage/presentation/widgets/shoshiling_item.dart';
import 'package:treval_app/sevimlilar/presentation/widgets/chegirmalar_container.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: double.infinity,
          height: 634,
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

        );
  }
}
