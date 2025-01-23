import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:svg_flutter/svg.dart';

import '../../../core/utils/colors.dart';

class SmsCodePage extends StatelessWidget {
   SmsCodePage({super.key});

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
              context.go("/royxatdanotish");
            },
            icon: SvgPicture.asset('assets/icons/back-arrow.svg'),
          ),
        ),
        title: Text(
          "Kodni kiriting",
          style: TextStyle(
            color: AppColor.containerbordercolor,
            fontSize: 24,
            fontFamily: "Urbanist",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 128,
            ),
            Text(
              "Sms kodni kiriting",
              style: TextStyle(
                color: AppColor.containerbordercolor,
                fontWeight: FontWeight.w400,
                fontFamily: "Urbanist",
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Pinput(
              obscureText: true,
              keyboardType: TextInputType.number,
              obscuringCharacter: "X",
              showCursor: false,
              controller: controller,
              length: 4,
              defaultPinTheme: PinTheme(
                height: 61,
                width: 83,
                textStyle: TextStyle(
                  color: AppColor.pinputtextcolor,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                decoration: BoxDecoration(
                  color: AppColor.containerinsidetextcolor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 128,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {
                  if (controller.text == "1524"){
                    context.go("/malumotlar");
                  }
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      AppColor.mainpagetextcolor,
                    ),
                    fixedSize: MaterialStateProperty.all(
                      Size(
                        380,
                        58,
                      ),
                    )),
                child: Text(
                  "Tasdiqlash",
                  style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist",
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
