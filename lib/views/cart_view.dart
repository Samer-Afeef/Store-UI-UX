import 'package:flutter/material.dart';
import 'package:store_ui/controller/cart_controller.dart';
import 'package:store_ui/core/constant/app_color.dart';
import '../models/arrivals_model.dart';
import '../widgets/cart/custom_card_delivery_charge.dart';
import '../widgets/cart/custom_card_order_total.dart';
import '../widgets/cart/custom_list_of_order_prices.dart';
import '../widgets/custom_button.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final CartController _controller = CartController();
@override
  void initState() {
    _controller.addListener(() {
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _controller.arrivalModel.length,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) {
                return Dismissible(
                    background: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.centerRight,
                      color: AppColors.black,
                      child: const Icon(
                        Icons.delete_outline_rounded,
                        size: 40,
                        color: AppColors.white,
                      ),
                    ),
                    key: ValueKey<ArrivalsModel>(
                        _controller.arrivalModel[index]),
                    onDismissed: (DismissDirection direction) {
                      _controller.removeProduct(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.white,
                      ),
                      child: Row(children: [
                        Container(
                          color: AppColors.grey.withOpacity(0.2),
                          width: MediaQuery.of(context).size.width / 5,
                          height: 75,
                        ),
                        Expanded(
                            child: ListTile(
                          title: Text(_controller.arrivalModel[index].name,
                              style: const TextStyle(fontSize: 15)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_controller.arrivalModel[index].categoryName,
                                  style: const TextStyle(
                                      color: AppColors.grey, fontSize: 12)),
                              Text(
                                  "\$ ${_controller.arrivalModel[index].price}",
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(right: 16),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColors.grey.withOpacity(0.2)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4)),
                                width: 25,
                                height: 25,
                                child: MaterialButton(
                                  padding:
                                      const EdgeInsets.only(right: 7, left: 7),
                                  textColor: AppColors.grey,
                                  elevation: 0.0,
                                  onPressed: () {
                                    _controller.increment(index);
                                  },
                                  child: const Text("+",
                                      style: TextStyle(
                                          fontSize: 20,
                                          height: 1,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  " ${_controller.arrivalModel[index].count} ",
                                  style: const TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4)),
                                width: 25,
                                height: 25,
                                child: MaterialButton(
                                  textColor: AppColors.grey,
                                  elevation: 0.0,
                                  padding:
                                      const EdgeInsets.only(right: 7, left: 7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2.0)),
                                  onPressed: () {
                                    _controller.decrease(index);
                                  },
                                  child: const Text("-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                          height: 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ));
              },
            ),
          ),
          CustomListOfOrderPrices(arrivalModel: _controller.arrivalModel),
          CustomCardDeliveryCharge(
              arrivalModel: _controller.arrivalModel,
              deliveryCharge: _controller.deliveryCharge.toString()),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), child: Divider()),
          CustomCardOrderTotal(
              arrivalModel: _controller.arrivalModel, total: "${_controller.total}"),
        ],
      ),
      bottomNavigationBar: CustomButton(
        title: "C H E C K O U T",
        onPressed: () {
          _controller.goToCheckoutView(context);
        },
      ),
    );
  }
}
