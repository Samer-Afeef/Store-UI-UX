import 'package:flutter/material.dart';

import '../models/arrivals_model.dart';
import '../views/checkout_view.dart';

class CartController extends ChangeNotifier{
  List<ArrivalsModel> arrivalModel = [
    const ArrivalsModel(categoryName: "Men's Clothes", price: "45.00",name: 'Denim Jacket',isFavorite: false),
    const ArrivalsModel(categoryName: "Denim Shirt", price: "45.00",name: 'Denim Jacket',isFavorite: true),
    const ArrivalsModel(categoryName: "Men's Clothes", price: "74.00",name: 'Blazer Jacket',isFavorite: true),
  ];
  String total ="\$65.59";
  String deliveryCharge ="\$2.60";

  int _count = 1;
  get count => _count;

  void increment(){
    _count ++;
    notifyListeners();
  }

  void decrease(){
    if(_count>1)
    {
      _count--;
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