import 'package:flutter/material.dart';

import '../core/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  final String title ;
  final void Function()? onPressed;
  const CustomButton({
    super.key, required this.title, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      width: double.infinity,
      child: MaterialButton(
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: AppColors.black,
        textColor: AppColors.white,
        onPressed:onPressed,
        child:  Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
