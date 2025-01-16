import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class HomepageMainImage extends StatelessWidget {
  const HomepageMainImage({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.svg,
    required this.svg1,
    required this.svg2,
  });

  final String text1, text2, text3, image, svg, svg1, svg2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 169,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 23,
              left: 17,
            ),
            child: Container(
              width: 59,
              height: 21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColor.mainpagetextcolor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text1,
                  style: TextStyle(
                      color: AppColor.containerinsidetextcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 21,
              right: 21,
            ),
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: AppColor.mainpagetextcolor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(child: SvgPicture.asset(svg)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              bottom: 20,
            ),
            child: SvgPicture.asset(svg1),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 78.03,
              bottom: 13,
            ),
            child: Container(
              width: 61,
              height: 21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColor.mainpagetextcolor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text2,
                  style: TextStyle(
                      color: AppColor.containerinsidetextcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 147.03,
              bottom: 15.7,
            ),
            child: SvgPicture.asset(svg2),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 175.03,
              bottom: 13,
            ),
            child: Container(
              width: 61,
              height: 21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColor.mainpagetextcolor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text3,
                  style: TextStyle(
                      color: AppColor.containerinsidetextcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Urbanist'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
