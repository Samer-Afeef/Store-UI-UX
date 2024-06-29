

class ArrivalsModel{

  final String name;
   int? count =1;
  final String categoryName;
  double?  price;
  final  bool isFavorite;


 ArrivalsModel({this.count,required this.categoryName, required this.price, required this.name,required this.isFavorite});
}