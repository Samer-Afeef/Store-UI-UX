import 'package:flutter/material.dart';
import '../views/cart_view.dart';
import '../views/home_view.dart';

class HomeDashBoardController extends ChangeNotifier{

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  List bottomAppbar = [
    {"icon": Icons.home},
    {"icon": Icons.favorite_border},
    {"icon": Icons.shopping_bag},
    {"icon": Icons.person},
  ];
  List<Widget> listPages = [
    const HomeView(),
    Container(),
    const CartView(),
    Container()
  ];

  int _currentTap = 0;
  int get currentTap => _currentTap;

  void changeTap(int index) {
    _currentTap = index;
    notifyListeners();
  }
  openDrawer(){
    scaffoldKey.currentState!.openDrawer();
  }
}