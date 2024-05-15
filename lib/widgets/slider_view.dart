import 'package:flutter/material.dart';

class SliderView extends StatelessWidget {
  final PageController? pageController;
  final void Function(int)? onPageChanged;
  const SliderView({super.key, this.pageController, this.onPageChanged});



  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller:pageController ,
      onPageChanged: onPageChanged,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffB4B4B4),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      },
    );
  }
}
