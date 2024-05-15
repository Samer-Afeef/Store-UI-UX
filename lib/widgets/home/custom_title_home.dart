import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;

  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: Text(title,
          style: const TextStyle(
              fontSize: 20.0,
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.bold)),
    );
  }
}
