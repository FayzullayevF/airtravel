import 'package:flutter/material.dart';
import 'package:treval_app/homepage/presentation/widgets/main_body_items.dart';

class TravelMainPage extends StatelessWidget {
  const TravelMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainBodyItems(),
      );
  }
}
