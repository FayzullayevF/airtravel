import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/bottom_container.dart';
import 'package:treval_app/homepage/presentation/widgets/first_picture.dart';
import 'package:treval_app/homepage/presentation/widgets/maincontainer.dart';
import 'package:treval_app/homepage/presentation/widgets/text_field.dart';
import 'package:treval_app/homepage/presentation/widgets/widgetlar_toplami.dart';
import 'package:treval_app/sevimlilar/presentation/widgets/texts_main.dart';

class MainBodyItems extends StatefulWidget {
  MainBodyItems({super.key});

  @override
  State<MainBodyItems> createState() => _MainBodyItemsState();
}

class _MainBodyItemsState extends State<MainBodyItems> {
  final List<String> images = [
    "assets/images/places/makka.png",
    "assets/images/places/paris.png",
    "assets/images/places/dubai.png",
    "assets/images/places/malayziya.png"
  ];

  int current_page = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 24),
            child: TextFieldItem(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 24),
            child: Container(
              height: 120,
              child: Stack(
                children: [
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    onPageChanged: (index) {
                      setState(() {
                        current_page = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return FirstPicture(
                        image: images[index],
                      );
                    },
                  ),
                  Positioned(
                    bottom: 12,
                    left: MediaQuery.of(context).size.width / 2 - ((images.length * 24) / 2),
                    child: Container(
                      width: 62,
                      height: 8,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColor.containerinsidetextcolor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          images.length,
                              (dotIndex) => AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            height: 8,
                            width: current_page == dotIndex ? 16 : 8,
                            decoration: BoxDecoration(
                              color: current_page == dotIndex
                                  ? Colors.green
                                  : Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: TextsMain(text: "Mashxur Joylar"),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Container(
              height: 60,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                WidgetlarToplami(
                    image: 'assets/images/places/paris.png', text: "Parij"),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {
                    context.go("/sevimlilar");
                  },
                  child: WidgetlarToplami(
                    image: 'assets/images/places/makka.png',
                    text: "Makka",
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                WidgetlarToplami(
                    image: 'assets/images/places/malayziya.png',
                    text: "Malayziya"),
                SizedBox(
                  width: 7,
                ),
                WidgetlarToplami(
                    image: 'assets/images/places/dubai.png', text: "Dubai"),
              ]),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MainContainer(),
          SizedBox(height: 15,),
          Center(child: BottomContainer(makka_photo: "assets/images/offers/offers_1.png")),

        ],
      ),
    ]);
  }
}
