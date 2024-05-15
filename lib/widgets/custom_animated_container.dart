import 'package:flutter/material.dart';

import '../core/constant/app_color.dart';
class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    super.key,
    required this.currentImage, this.width,
  });
   final double? width;
  final int currentImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(3, (index) {
    return AnimatedContainer(
            margin: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 8),
            duration: const Duration(microseconds: 900),
            width:width,
            height: 4,
            decoration: BoxDecoration(
                color: currentImage == index
                    ? AppColors.black
                    : AppColors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16.0)),
          );
        })
      ],
    );
  }
}