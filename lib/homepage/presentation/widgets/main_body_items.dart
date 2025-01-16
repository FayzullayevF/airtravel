import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/homepage/presentation/widgets/first_picture.dart';
import 'package:treval_app/homepage/presentation/widgets/maincontainer.dart';
import 'package:treval_app/homepage/presentation/widgets/text_field.dart';
import 'package:treval_app/homepage/presentation/widgets/widgetlar_toplami.dart';
import 'package:treval_app/sevimlilar/presentation/widgets/texts_main.dart';

class MainBodyItems extends StatelessWidget {
  const MainBodyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.only(left: 5, right: 24),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldItem(),
              SizedBox(
                height: 10,
              ),
              FirstPicture(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: TextsMain(text: "Mashxur Joylar"),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Container(
                  height: 60,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    WidgetlarToplami(
                        image: 'assets/images/places/paris.png', text: "Parij"),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: (){
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
            ],
          ),
        ]);
  }
}
