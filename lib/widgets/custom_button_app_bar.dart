import 'package:flutter/material.dart';

import '../core/constant/app_color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final bool? active;

  const CustomButtonAppBar(
      {super.key,
      required this.iconData,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(iconData,
            color: active == true ? AppColors.black : AppColors.grey),
      ]),
    );
  }
}
