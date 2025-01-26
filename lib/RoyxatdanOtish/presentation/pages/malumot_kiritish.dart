import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../core/utils/colors.dart';

class MalumotKiritish extends StatelessWidget {
  const MalumotKiritish({super.key});

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
              context.go("/smscodepage");
            },
            icon: SvgPicture.asset('assets/icons/back-arrow.svg'),
          ),
        ),
        title: Text(
          "Ma'lumotlarni kiriting",
          style: TextStyle(
            color: AppColor.containerbordercolor,
            fontSize: 24,
            fontFamily: "Urbanist",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
           horizontal: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24,),
              Center(
                child: Stack(children: [
                  Image(
                    image: AssetImage('assets/images/onboarding/profile.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 7,
                    child: ElevatedButton(onPressed: (){

                    },child: SvgPicture.asset('assets/icons/edit.svg')),
                  )
                ]),
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldContainerOne(),
              SizedBox(
                height: 24,
              ),
              TextFieldContainerTwo(),
              SizedBox(
                height: 24,
              ),
              TextFieldContainerThree(),
              SizedBox(
                height: 24,
              ),
              TextFieldContainerFour()
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainerOne extends StatefulWidget {
   TextFieldContainerOne({
    super.key,
  });

  @override
  State<TextFieldContainerOne> createState() => _TextFieldContainerOneState();
}

class _TextFieldContainerOneState extends State<TextFieldContainerOne> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColor.containerinsidetextcolor,
        filled: true,
        hintText: "Ismingiz",
        hintStyle: TextStyle(
          color: AppColor.containerbordercolor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: "Urbanist",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none
        ),
      ),
    );
  }
}
class TextFieldContainerTwo extends StatelessWidget {
  TextFieldContainerTwo({
    super.key,
  });

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColor.containerinsidetextcolor,
        filled: true,
        hintText: "Familiyangiz",
        hintStyle: TextStyle(
          color: AppColor.containerbordercolor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: "Urbanist",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
class TextFieldContainerThree extends StatelessWidget {
  TextFieldContainerThree({
    super.key,
  });

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColor.containerinsidetextcolor,
        filled: true,
        hintText: "+998 99 999-99-99",
        hintStyle: TextStyle(
          color: AppColor.containerbordercolor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: "Urbanist",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
class TextFieldContainerFour extends StatelessWidget {
  TextFieldContainerFour({
    super.key,
  });

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColor.containerinsidetextcolor,
        filled: true,
        hintText: "Viloyatingiz",
        hintStyle: TextStyle(
          color: AppColor.containerbordercolor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: "Urbanist",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}


