import 'package:flutter/material.dart';

import '../models/arrivals_model.dart';
import '../views/checkout_view.dart';

class CartController extends ChangeNotifier{
  List<ArrivalsModel> arrivalModel = [
     ArrivalsModel(categoryName: "Men's Clothes", price: 45.00,name: 'Denim Jacket',isFavorite: false,count: 1),
     ArrivalsModel(categoryName: "Denim Shirt", price: 45.00,name: 'Denim Jacket',isFavorite: true,count: 1),
     ArrivalsModel(categoryName: "Men's Clothes", price: 74.00,name: 'Blazer Jacket',isFavorite: true,count: 1),
  ];
  String total ="\$65.59";
  String deliveryCharge ="\$2.60";

  void increment(int index){
    arrivalModel[index].count = (arrivalModel[index].count! +1) ;
    arrivalModel[index].price = (arrivalModel[index].price! ) + arrivalModel[index].price!;
    notifyListeners();
  }

  void decrease(int index){
    if(arrivalModel[index].count != 1)
    {
      arrivalModel[index].count =  (arrivalModel[index].count! -1);
      arrivalModel[index].price = arrivalModel[index].price!  / 2;
      notifyListeners();
    }
  }
  void removeProduct(int index){
    arrivalModel.removeAt(index);
    notifyListeners();
  }
  void goToCheckoutView(BuildContext context){

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const CheckoutView(),
    ));
  }


}