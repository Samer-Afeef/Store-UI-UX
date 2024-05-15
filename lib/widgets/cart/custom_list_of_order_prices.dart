import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../../models/arrivals_model.dart';

class CustomListOfOrderPrices extends StatelessWidget {
  const CustomListOfOrderPrices({
    super.key,
    required this.arrivalModel,
  });

  final List<ArrivalsModel> arrivalModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey.withOpacity(0.1), width: 1),
          borderRadius: BorderRadius.circular(8.0)),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: arrivalModel.length,
        itemBuilder:(context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child:  Text(arrivalModel[index].name, style: const TextStyle(fontSize: 16 ,color: AppColors.grey))),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(arrivalModel[index].price, style: const TextStyle(fontSize: 18,  fontWeight: FontWeight.bold,
                      color: AppColors.black))),
            ],
          );
        } ,
        separatorBuilder: (context, index) => const Divider(),),
    );
  }
}
