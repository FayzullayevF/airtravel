import 'package:flutter/material.dart';
import 'package:treval_app/core/presentations/widgets/main_page_app_bar.dart';
import 'package:treval_app/homepage/presentation/pages/sevimlilar_main_page.dart';
import 'package:treval_app/homepage/presentation/widgets/sevimlilar_main_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SevimlilarMainPage()
    );
  }
}
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: MainPageAppBar(),
//       // body: SevimlilarMainContainer(text: text, image: image),
//     );
//   }
// }

