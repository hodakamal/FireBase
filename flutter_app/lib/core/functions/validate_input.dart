import 'package:get/get.dart';

validateInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "هذا الحقل مطلوب";
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "اسم المستخد غير صالح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "البريد الإلكتروني غير صالح";
    }
  }
  if (type == "phone ") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "رقم الهاتف غير صالح";
    }
  }
   
  if (val.length < min) {
    return "لا يمكن أن تكون القيمة أقل من $min";
  }
   if (val.length >max) {
    return "لا يمكن أن تكون القيمة أكثر من $max";
  }
}
