import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
class CustomButtonArrivals extends StatelessWidget {
  final String title ;
  final void Function()? onPressed;
  final IconData? icon;
  const CustomButtonArrivals({
    super.key, this.onPressed, this.icon, required this.title,}
      );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)),
      color: AppColors.grey.withOpacity(0.2),
      textColor: AppColors.black,
      onPressed: () {
        // Sort items
      },
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.grey,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}