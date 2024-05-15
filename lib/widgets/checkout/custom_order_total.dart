import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
class CustomOrderTotal extends StatelessWidget {
  const CustomOrderTotal({
    super.key,
    required this.total,
  });

  final String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "TOTAL",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          Text(
            total,
            style: const TextStyle(
                color: AppColors.black,
                height: 0.0,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}