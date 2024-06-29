import 'package:flutter/cupertino.dart';

import '../models/arrivals_model.dart';

class ArrivalsController extends ChangeNotifier{

  List<ArrivalsModel> arrivalModel = [
   ArrivalsModel(
        categoryName: "Men's Clothes",
        price: 45.00,
        name: 'Denim Jacket',
        isFavorite: false),
 ArrivalsModel(
        categoryName: "Denim Shirt",
        price: 45.00,
        name: 'Denim Jacket',
        isFavorite: true),
 ArrivalsModel(
        categoryName: "Men's Clothes",
        price: 74.00,
        name: 'Blazer Jacket',
        isFavorite: true),
 ArrivalsModel(
        categoryName: "Men's Clothes",
        price:  45.00,
        name: 'Denim Jacket',
        isFavorite: false),
 ArrivalsModel(
        categoryName: "Men's Clothes",
        price: 45.00,
        name: 'Denim Jacket',
        isFavorite: false),
 ArrivalsModel(
        categoryName: "Men's Clothes",
        price: 45.00,
        name: 'Denim Jacket',
        isFavorite: true),
  ];
}