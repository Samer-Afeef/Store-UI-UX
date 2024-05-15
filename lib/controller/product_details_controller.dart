import 'package:flutter/material.dart';
import '../models/color_model.dart';
import '../models/size_model.dart';

class ProductDetailsController extends ChangeNotifier{

  List<SizeModel> sizeModel = [
    SizeModel(sizeName: "XS", selected: false),
    SizeModel(sizeName: "S", selected: false),
    SizeModel(
      sizeName: "M",
      selected: false,
    ),
    SizeModel(sizeName: "L", selected: false),
    SizeModel(sizeName: "XL", selected: false),
    SizeModel(sizeName: "XS", selected: false),
    SizeModel(sizeName: "S", selected: false),
    SizeModel(
      sizeName: "M",
      selected: false,
    ),
    SizeModel(sizeName: "L", selected: false),
    SizeModel(sizeName: "XL", selected: false),
  ];
  List<ColorModel> colorModel = [
    ColorModel(color: Colors.black, selected: false),
    ColorModel(color: Colors.deepPurple, selected: false),
    ColorModel(color: Colors.blueGrey, selected: false),
    ColorModel(color: Colors.lightGreen, selected: false),
    ColorModel(color: Colors.brown, selected: false),
    ColorModel(color: Colors.cyan, selected: false),
    ColorModel(color: Colors.black, selected: false),
    ColorModel(color: Colors.deepPurple, selected: false),
    ColorModel(color: Colors.blueGrey, selected: false),
    ColorModel(color: Colors.lightGreen, selected: false),
    ColorModel(color: Colors.brown, selected: false),
    ColorModel(color: Colors.cyan, selected: false),
  ];
  PageController pageController = PageController();
  int _currentImage = 0;

  get currentImage => _currentImage;
  void imageChange(int index){
    _currentImage = index;
    notifyListeners();
  }

  void choseColor(int index){
    for (var element in colorModel) {
      element.selected = false;
    }
    colorModel[index].selected = true;
    notifyListeners();
  }

  void choseSize(int index){
    for(var element in sizeModel){
      element.selected = false;
    }
    sizeModel[index].selected = true;
    notifyListeners();
  }


}