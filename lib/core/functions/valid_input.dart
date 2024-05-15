

 import 'package:store_ui/core/constant/app_string.dart';

validInput(String val, int min, int max,String? type) {

  if (val.isEmpty) {
    return AppString.inputEmpty;
  }

  if(type == "String") {
    if (RegExp(r'^[0-9\s]*$').hasMatch(val)) {
      return AppString.notValidString;
    }
  }

  if (val.length < min) {
    return "${AppString.inputMin}  $min";
  }

  if (val.length > max) {
    return "${AppString.inputMax}  $max";
  }
}
