import 'package:flutter/material.dart';
import 'package:store_ui/controller/checkout_controller.dart';
import 'package:store_ui/core/constant/app_color.dart';
import 'package:store_ui/widgets/custom_button.dart';
import '../widgets/checkout/checkout_card.dart';
import '../widgets/checkout/custom_button_payment_method.dart';
import '../widgets/checkout/custom_order_total.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckState();
}

class _CheckState extends State<CheckoutView> {
final CheckoutController _controller = CheckoutController();
@override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Checkout"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.format_list_bulleted_sharp,
              color: AppColors.grey,
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView(
          children: [
            AspectRatio(
                aspectRatio: 16 / 3, child: CustomOrderTotal(total: _controller.total)),
            const Card(
              margin: EdgeInsets.only(top: 22),
              elevation: 0.2,
              child: AspectRatio(
                aspectRatio: 16 / 3,
                child: ListTile(
                  title: Text(
                    "Address",
                    style: TextStyle(color: AppColors.grey, fontSize: 14),
                  ),
                  subtitle: Text(
                    "3402  Edenborn Metairie LA, USA",
                    style: TextStyle(color: AppColors.black, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
            Card(
                margin: const EdgeInsets.only(top: 22),
                elevation: 0.2,
                child: ListTile(
                  title: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "payment Method",
                        style: TextStyle(fontSize: 14, color: AppColors.grey),
                      )),
                  subtitle: AspectRatio(
                    aspectRatio: 16 / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButtonPaymentMethod(
                          title: "Card",
                          onPressed: () {
                            _controller.cardPaymentMethod();
                          },
                          paymentMethod: _controller.card,
                        ),
                        CustomButtonPaymentMethod(
                          title: "Paypal",
                          onPressed: () {
                            _controller.paypalPaymentMethod();
                          },
                          paymentMethod: _controller.paypal,
                        ),
                        CustomButtonPaymentMethod(
                          title: "EMI",
                          onPressed: () {
                            _controller.emiPaymentMethod();
                          },
                          paymentMethod: _controller.emi,
                        ),
                      ],
                    ),
                  ),
                )),
             CheckoutCard(formState:_controller.formState),
            CustomButton(
              title: "P L A C E O R D E R",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
