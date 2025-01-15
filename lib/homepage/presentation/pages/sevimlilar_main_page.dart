import 'package:flutter/material.dart';
import 'package:treval_app/core/presentations/widgets/main_page_app_bar.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/batafsil_container.dart';
import 'package:treval_app/homepage/presentation/widgets/calendar_container.dart';
import 'package:treval_app/homepage/presentation/widgets/chegirmalar_container.dart';
import 'package:treval_app/homepage/presentation/widgets/sevimlilar_main_container.dart';
import 'package:treval_app/homepage/presentation/widgets/six_container.dart';
import 'package:treval_app/homepage/presentation/widgets/sugurta_chipta_etc.dart';
import 'package:treval_app/homepage/presentation/widgets/texts_main.dart';

class SevimlilarMainPage extends StatelessWidget {
  const SevimlilarMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainPageAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.containerbordercolor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SevimlilarMainContainer(
                    text1: '14 kun',
                    text2: '14 Oktyabr',
                    text3: '27 Oktyabr',
                    image: 'assets/images/offers/airtravel.png',
                    svg1: 'assets/icons/flight.svg',
                    svg2: 'assets/icons/landing.svg',
                    svg: 'assets/icons/heart.svg',
                  ),
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextsMain(text: "Umra Safari"),
                  ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: CalendarContainer(
                          svg: 'assets/icons/newcalendar.svg',
                          text: '10',
                          text1: 'KUN',
                          text2: 'Madinada',
                        ),
                      ),
                      const SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: CalendarContainer(
                          svg: 'assets/icons/newcalendar.svg',
                          text: '5',
                          text1: 'KUN',
                          text2: 'Makkada',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextsMain(text: "Sayohat tarkibi"),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: SugurtaChiptaEtc(
                          svg: 'assets/icons/transport.svg',
                          text: "Sug'urta",
                        ),
                      ),
                      const SizedBox(width: 4),
                      SugurtaChiptaEtc(
                        svg: 'assets/icons/transport.svg',
                        text: "Chipta",
                      ),
                      const SizedBox(width: 4),
                      AviaChipta(
                        svg1: 'assets/icons/transport.svg',
                        text1: "Aviachipta",
                      ),
                      const SizedBox(width: 4),
                      Viza(
                        svg2: 'assets/icons/transport.svg',
                        text2: 'Viza',
                      ),
                      const SizedBox(width: 4),
                      SixContainer(),
                    ],
                  ),
                  const SizedBox(height: 17),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: TextsMain(text: "Tariflar"),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ChegirmalarContainer(),
                          const SizedBox(width: 5),
                          ChegirmalarContainer(),
                          const SizedBox(width: 5),
                          ChegirmalarContainer(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: BatafsilContainer(text: "Batafsil..."),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
