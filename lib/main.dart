import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:treval_app/BatafsilPage/presentation/pages/batafsil_page_view.dart';
import 'package:treval_app/RoyxatdanOtish/presentation/pages/malumot_kiritish.dart';
import 'package:treval_app/RoyxatdanOtish/presentation/pages/royxatdan_otish.dart';
import 'package:treval_app/RoyxatdanOtish/presentation/pages/sms_code_page.dart';
import 'package:treval_app/core/client.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';
import 'package:treval_app/homepage/presentation/widgets/card.dart';
import 'package:treval_app/homepage/presentation/widgets/edit_data.dart';
import 'package:treval_app/homepage/presentation/widgets/orders.dart';
import 'package:treval_app/homepage/presentation/widgets/wallet.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_page.dart';
import 'package:treval_app/sevimlilar/presentation/pages/sevimlilar_main_page.dart';
import 'homepage/presentation/pages/profile.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/sevimlilar",
    builder: (context, state) => SevimlilarMainPage(),
  ),
  GoRoute(
    path: "/",
    builder: (context, state) => OnboardingView(),
  ),
  // GoRoute(
  //     path: "/batafsil",
  //     builder: (context, state) {
  //       BatafsilMainPage();
  //     }),
  GoRoute(
    path: "/cards",
    builder: (context, state) => Cards(),
  ),
  GoRoute(
    path: "/orders",
    builder: (context, state) => Orders(),
  ),
  GoRoute(
    path: "/wallet",
    builder: (context, state) => Wallet(),
  ),
  GoRoute(
    path: "/profile",
    builder: (context, state) => ProfilePage(),
  ),
  GoRoute(
    path: "/editprofile",
    builder: (context, state) => EditData(),
  ),
  GoRoute(
    path: "/royxatdanotish",
    builder: (context, state) => RoyxatdanOtishPage(),
  ),
  GoRoute(
    path: "/smscodepage",
    builder: (context, state) => SmsCodePage(),
  ),
  GoRoute(
    path: "/malumotlar",
    builder: (context, state) => MalumotKiritish(),
  ),
]);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ApiClient()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
