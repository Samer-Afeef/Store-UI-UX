import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
class CustomButtonPaymentMethod extends StatelessWidget {
  final bool paymentMethod ;
  final String title ;
  final void Function()? onPressed;

  const CustomButtonPaymentMethod({super.key,this.paymentMethod= false, required this.title, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)),
      color: paymentMethod ? AppColors.black:AppColors.grey.withOpacity(0.1) ,
      textColor: paymentMethod ? AppColors.white:AppColors.grey,
      onPressed: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5.7,
        child:  Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              height: 3,
            )),
      ),
    );
  }
}
