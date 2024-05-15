import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final AutovalidateMode? validateMode;
  final int? maxLen;

  final TextEditingController? myController;
  final String? Function(String?)? valid;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.myController,
    this.keyboardType,
    this.obscureText = false,
    this.valid,
    this.maxLen,
    this.validateMode,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        autovalidateMode: validateMode,
        maxLength: maxLen,
        validator: valid,
        cursorColor: AppColors.primaryColor,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: myController,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: AppColors.grey, width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: AppColors.grey, width: 1))),
      ),
    );
  }
}
