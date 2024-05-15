import 'package:flutter/material.dart';
import 'package:store_ui/controller/home_controller.dart';
import 'package:store_ui/core/constant/app_color.dart';
import '../widgets/custom_animated_container.dart';
import '../widgets/slider_view.dart';
import '../widgets/home/custom_title_home.dart';
import '../widgets/home/list_categories_home.dart';
import '../widgets/product_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final HomeController _controller = HomeController();
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: SliderView(
              pageController: _controller.pageController,
              onPageChanged: (value) {
                _controller.imageChange(value);
              },
            ),
          ),
          CustomAnimatedContainer(
              currentImage: _controller.currentImage, width: width / 3.8),
          const CustomTitleHome(
            title: "Categories",
          ),
          const ListCategoriesHome(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitleHome(
                title: "New Arrivals",
              ),
              TextButton(
                onPressed: () {
                  _controller.goToArrivalsView(context);
                },
                child: const Text(
                  "See All",
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              )
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            childAspectRatio: 3 / 5,
            children: List.generate(_controller.arrivalModel.length,
                (index) => ProductCard(arrivalsModel:_controller.arrivalModel[index])),
          ),
        ],
      ),
    );
  }
}
