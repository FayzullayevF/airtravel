import 'package:flutter/material.dart';

class FirstPicture extends StatelessWidget {
  const FirstPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
            image: AssetImage(
              'assets/images/places/makka.png',
            ),
          width: 380,
          height: 120,
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}
