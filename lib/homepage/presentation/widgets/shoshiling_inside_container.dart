import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class ShoshilingInsideContainer extends StatelessWidget {
  const ShoshilingInsideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
        left: 66,
        right: 60,
        top: 448,
      ),
      child: Container(
        width: 302,
        height: 529,
        decoration: BoxDecoration(
          color: AppColor.containerinsidetextcolor,
          border: Border.all(
            width: 2,
            color: AppColor.containerbordercolor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Bolalarga mos hajm
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 7, right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: const AssetImage(
                          'assets/images/offers/airtravel.png'),
                      height: 169,
                      width: 287,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 30,
                  child: Container(
                    width: 59,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.mainpagetextcolor,
                    ),
                    child: Center(
                      child: Text(
                        "14 kun",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: AppColor.containerinsidetextcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Urbanist',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28, left: 244),
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: AppColor.mainpagetextcolor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/heart.svg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 58, top: 144),
                  child: SvgPicture.asset('assets/icons/flight.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 86, top: 142),
                  child: Container(
                    width: 61,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.mainpagetextcolor,
                    ),
                    child: Center(
                      child: Text(
                        "14 Okt",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: AppColor.containerinsidetextcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Urbanist',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 155, top: 144),
                  child: SvgPicture.asset('assets/icons/landing.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 183, top: 142),
                  child: Container(
                    width: 61,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.mainpagetextcolor,
                    ),
                    child: Center(
                      child: Text(
                        "27 Okt",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: AppColor.containerinsidetextcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Urbanist',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Umra Safari",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: AppColor.textmain,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Container(
                    width: 108,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        color: AppColor.mainpagetextcolor,
                        width: 1,
                      ),
                      color: AppColor.containerinsidetextcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.5, vertical: 0.5),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/newcalendar.svg'),
                          SizedBox(
                            width: 3,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  color: AppColor.mainpagetextcolor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Urbanist',
                                  height: 1,
                                ),
                              ),
                              Text(
                                "KUN",
                                style: TextStyle(
                                  color: AppColor.mainpagetextcolor
                                      .withValues(alpha: 0.5),
                                  fontSize: 4,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Urbanist',
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Madinada",
                            style: TextStyle(
                              color: AppColor.mainpagetextcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Urbanist',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 108,
                  height: 23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: AppColor.mainpagetextcolor,
                      width: 1,
                    ),
                    color: AppColor.containerinsidetextcolor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.5, vertical: 0.5),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/newcalendar.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "5",
                              style: TextStyle(
                                color: AppColor.mainpagetextcolor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Urbanist',
                                height: 1,
                              ),
                            ),
                            Text(
                              "KUN",
                              style: TextStyle(
                                color: AppColor.mainpagetextcolor
                                    .withValues(alpha: 0.5),
                                fontSize: 4,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Urbanist',
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Makkada",
                          style: TextStyle(
                            color: AppColor.mainpagetextcolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sayohat tarkibida",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: AppColor.textmain,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  width: 68,
                  height: 19,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.mainpagetextcolor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/transport.svg'),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Sug'urta",
                          style: TextStyle(
                            color: AppColor.mainpagetextcolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 68,
                          height: 19,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.mainpagetextcolor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 1),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                    child: SvgPicture.asset('assets/icons/transport.svg')),
                                SizedBox(
                                  width: 2,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Chipta",
                                    style: TextStyle(
                                      color: AppColor.mainpagetextcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      fontFamily: 'Urbanist',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
