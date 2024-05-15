import 'package:flutter/material.dart';
import 'package:store_ui/core/constant/app_theme.dart';
import 'package:store_ui/views/home_dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme:appTheme,
      debugShowCheckedModeBanner: false,
        home: const HomeDashBoard(),
    );
  }
}
