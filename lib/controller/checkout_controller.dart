import 'package:flutter/cupertino.dart';

class CheckoutController extends ChangeNotifier{

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool card = true;
  bool emi = false;
  bool paypal = false;
  String total = "\$65.95";

  void cardPaymentMethod(){
    card = !card;
    paypal = false;
    emi = false;
    notifyListeners();
  }
  void paypalPaymentMethod(){
    paypal = !paypal;
    emi = false;
    card = false;
    notifyListeners();
  }
  void emiPaymentMethod(){
    emi = !emi;
    paypal = false;
    card = false;
    notifyListeners();
  }
}