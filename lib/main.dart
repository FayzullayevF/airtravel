import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';
import 'package:treval_app/sevimlilar/presentation/pages/sevimlilar_main_page.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/sevimlilar",
    builder: (context, state) => SevimlilarMainPage(),
  ),
  GoRoute(path: "/", builder: (context, state)=> TravelMainPage())
]
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
    );
  }
}
