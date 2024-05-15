import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../../core/functions/valid_input.dart';
import 'custom_text_form_field.dart';

class CheckoutCard extends StatelessWidget {
    final GlobalKey<FormState> formState;
  final void Function()? onPlaceOrder;

  const CheckoutCard({
    super.key,
    this.onPlaceOrder, required this.formState,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key:formState,
      child: Card(
        margin: const EdgeInsets.only(top:22,bottom: 20 ,),
        elevation: 0.2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  "Card Holder Name",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                 CustomTextFormField(

                  hintText: "Burgundy Flemming",
                  keyboardType: TextInputType.text,
                   validateMode:AutovalidateMode.onUserInteraction,
                  valid: (val) {
                    return validInput(val!,3,20,"String");
                  },
                ),
                const Text(
                  "Card Number",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  prefixIcon: Container(
                    margin: const EdgeInsets.all(12),
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.cyan),
                  ),
                  obscureText: true,
                  hintText: "1234 **** ****7890",
                  keyboardType: TextInputType.number,
                  validateMode:AutovalidateMode.onUserInteraction,
                  valid: (val) {
                    // allow gust characters
                    
                    return validInput(val!,16,16,"");
                  },
                ),
                 Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Valid Until",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "80/25",
                          keyboardType: TextInputType.datetime,
                          validateMode:AutovalidateMode.onUserInteraction,
                          valid: (val) {
                            return validInput(val!,5,5,"");
                          },
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormField(
                          hintText: "***",
                          keyboardType: TextInputType.text,
                          validateMode:AutovalidateMode.onUserInteraction,
                          valid: (val) {
                            return validInput(val!,3,3,"String");
                          },
                        ),
                      ],
                    )),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
