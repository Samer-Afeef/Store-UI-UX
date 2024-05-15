import 'package:flutter/material.dart';

import 'package:store_ui/models/arrivals_model.dart';
import 'package:store_ui/views/product_details_view.dart';

import '../core/constant/app_color.dart';

class ProductCard extends StatelessWidget {
  final ArrivalsModel arrivalsModel;

  const ProductCard({super.key, required this.arrivalsModel});

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ProductDetailsView(arrivalsModel: arrivalsModel);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppColors.white.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: cardWidth,
                color: AppColors.grey.withOpacity(0.2),
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        arrivalsModel.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      arrivalsModel.name,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      arrivalsModel.categoryName,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "\$${arrivalsModel.price}",
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
