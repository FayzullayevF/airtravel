import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class EditData extends StatelessWidget {
  const EditData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: IconButton(onPressed: () {
            context.go("/profile");
          },
          icon: SvgPicture.asset('assets/icons/back-arrow.svg')),
        ),
        centerTitle: true,
        title: Text(
          "Ma'lumotlarni Tahririlash",
          style: TextStyle(
            color: AppColor.containerbordercolor,
            fontSize: 24,
            fontFamily: "Urbanist",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
