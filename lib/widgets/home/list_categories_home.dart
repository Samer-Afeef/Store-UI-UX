import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../../models/categories_model.dart';

class ListCategoriesHome extends StatefulWidget {

  const ListCategoriesHome({super.key});

  @override
  State<ListCategoriesHome> createState() => _ListCategoriesHomeState();
}

class _ListCategoriesHomeState extends State<ListCategoriesHome> {
  List<CategoriesModel> categoryModel = [
    const CategoriesModel(categoryName: "Shoes"),
    const CategoriesModel(categoryName: "T-shirts"),
    const CategoriesModel(categoryName: "Bags"),
    const CategoriesModel(categoryName: "Jeans"),
    const CategoriesModel(categoryName: "Sung la"),
    const CategoriesModel(categoryName: "Sung la"),
    const CategoriesModel(categoryName: "Sung la"),
    const CategoriesModel(categoryName: "Sung la"),
    const CategoriesModel(categoryName: "T-shirts"),
  ];

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return SizedBox(
      height: size / 7,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: categoryModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Sections(sectionModel: categoryModel[index]);
        },
      ),
    );
  }
}

class Sections extends StatelessWidget {
  final CategoriesModel sectionModel;

  const Sections({
    super.key,
    required this.sectionModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Go to items
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70,
            height: 65,
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(10, 10),
                  blurRadius: 0.0,
                  color: AppColors.grey.withOpacity(0.0),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            sectionModel.categoryName,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryColor.withOpacity(0.9)),
          )
        ],
      ),
    );
  }
}
