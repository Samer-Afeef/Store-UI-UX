import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../../models/arrivals_model.dart';
class CustomCardOrderTotal extends StatelessWidget {
  const CustomCardOrderTotal({
    super.key,
    required this.arrivalModel,
    required this.total,
  });

  final List<ArrivalsModel> arrivalModel;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text("TOTAL",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey))),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:  Text( arrivalModel.isNotEmpty ? total :"\$0.0",
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black)))
      ],
    );
  }
}