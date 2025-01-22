import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class RoyxatdanOtishPage extends StatelessWidget {
  RoyxatdanOtishPage({super.key});
final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: IconButton(
            onPressed: () {
              context.go("/");
            },
            icon: SvgPicture.asset('assets/icons/back-arrow.svg'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image(
              color: Colors.green,
              image: AssetImage(
                'assets/images/onboarding/travelmain.png',
              ),
            ),
            SizedBox(
              height: 62,
            ),
            Text(
              "Ro'yxatdan o'tish",
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontSize: 32,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 62,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset("assets/icons/calls.svg"),
                    ),
                    filled: true,
                    fillColor: AppColor.textfilebackground,
                    hintText: "Telefon raqamingizni kiriting",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(controller.text=="+998939441524"){
                  context.go("/smscodepage");
                }
              },
              child: Text(
                "Ro'yxatdan o'tish",
                style: TextStyle(
                  color: AppColor.containerinsidetextcolor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist",
                  fontSize: 16,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    AppColor.mainpagetextcolor,
                  ),
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      348,
                      22,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
