import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary:AppColors.secondaryColor,background: AppColors.backgroundColor,primary: AppColors.primaryColor),

    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0.0,
      elevation: 0,
    ),
);
