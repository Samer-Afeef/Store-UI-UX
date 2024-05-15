import 'package:flutter/material.dart';
import '../models/arrivals_model.dart';
import '../views/arrivals_view.dart';

class HomeController extends ChangeNotifier{

  List<ArrivalsModel> arrivalModel = [
    const ArrivalsModel(
        categoryName: "Men's Clothes",
        price: "45.00",
        name: 'Denim Jacket',
        isFavorite: true),
    const ArrivalsModel(
        categoryName: "Men's Clothes",
        price: "74.00",
        name: 'Blazer Jacket',
        isFavorite: false),
    const ArrivalsModel(
        categoryName: "Denim Shirt",
        price: "45.00",
        name: 'Denim Jacket',
        isFavorite: true),
    const ArrivalsModel(
        categoryName: "Men's Clothes",
        price: "45.00",
        name: 'Denim Jacket',
        isFavorite: false),
    const ArrivalsModel(
        categoryName: "Men's Clothes",
        price: "45.00",
        name: 'Denim Jacket',
        isFavorite: true),
    const ArrivalsModel(
        categoryName: "Men's Clothes",
        price: "45.00",
        name: 'Denim Jacket',
        isFavorite: false),
  ];
  int _currentImage = 0;
  get currentImage => _currentImage;

  void imageChange(int index){
    _currentImage = index;
    notifyListeners();
  }
  PageController pageController = PageController();

  void goToArrivalsView(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const ArrivalsView(),
    ));
  }



}