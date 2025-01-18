import 'package:flutter/material.dart';

class BatafsilPageMainImage extends StatelessWidget {
  const BatafsilPageMainImage({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image(
            image: AssetImage(
              images[index],
            ),
            width: 428,
            height: 312,
            fit: BoxFit.cover,
          );
        });
  }
}
