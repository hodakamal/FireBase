import 'package:flutter/material.dart';
import 'package:flutter_app/core/services/app_services.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LocaleController extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();

  cahngeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedPrefLang = appServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
