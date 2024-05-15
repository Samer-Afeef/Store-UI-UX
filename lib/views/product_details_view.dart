import 'package:flutter/material.dart';
import 'package:store_ui/core/constant/app_color.dart';
import 'package:store_ui/widgets/custom_button.dart';
import '../controller/product_details_controller.dart';
import '../models/arrivals_model.dart';
import '../widgets/custom_animated_container.dart';
import '../widgets/slider_view.dart';

class ProductDetailsView extends StatefulWidget {
  final ArrivalsModel arrivalsModel;
  const ProductDetailsView({super.key, required this.arrivalsModel});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {

  final ProductDetailsController _controller = ProductDetailsController();

  @override
  void initState() {
    _controller.addListener(() {
      setState((){});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.grey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: SliderView(
                          pageController: _controller.pageController,
                          onPageChanged: (value) {
                          _controller.imageChange(value);
                          },
                        ),
                      ),
                      CustomAnimatedContainer(
                          currentImage: _controller.currentImage, width: width / 3.5),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              widget.arrivalsModel.name,
              style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.arrivalsModel.categoryName,
                style: const TextStyle(color: AppColors.grey, fontSize: 14)),
            trailing: Text(
              "\$${widget.arrivalsModel.price}",
              style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Color",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            _controller.choseColor(index);
                          },
                          child: CircleAvatar(
                            backgroundColor: _controller.colorModel[index].color,
                            child:_controller.colorModel[index].selected
                                ? const Icon(
                                    Icons.check,
                                    color: AppColors.white,
                                  )
                                : null,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 16,
                        );
                      },
                      itemCount: _controller.colorModel.length),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Size",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                           _controller.choseSize(index);
                          },
                          child: CircleAvatar(
                            backgroundColor: _controller.sizeModel[index].selected
                                ? AppColors.black
                                : AppColors.black.withOpacity(0.1),
                            child: Text(
                              _controller.sizeModel[index].sizeName,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: _controller.sizeModel[index].selected
                                      ? AppColors.white
                                      : AppColors.grey),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 16,
                        );
                      },
                      itemCount: _controller.sizeModel.length),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: CustomButton(
            title: "A D D  T O  C A R T",
            onPressed: () {},
          )),
          IconButton(
            padding: const EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
