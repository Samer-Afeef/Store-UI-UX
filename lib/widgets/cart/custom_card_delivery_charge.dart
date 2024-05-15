import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../../models/arrivals_model.dart';
class CustomCardDeliveryCharge extends StatelessWidget {
  const CustomCardDeliveryCharge({
    super.key,
    required this.arrivalModel,
    required this.deliveryCharge,
  });
  final List<ArrivalsModel> arrivalModel;
  final String deliveryCharge;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text("Delivery Charge", style: TextStyle(fontSize: 16 ,color: AppColors.grey))),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child:  Text( arrivalModel.isNotEmpty ? deliveryCharge :"\$0.0", style: const TextStyle(fontSize: 18,  fontWeight: FontWeight.bold,
                color: AppColors.black)))
      ],
    );
  }
}