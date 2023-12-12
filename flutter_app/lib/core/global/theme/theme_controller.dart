import 'package:flutter/material.dart';
import 'package:flutter_app/core/global/theme/dark_theme.dart';
import 'package:flutter_app/core/services/app_services.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'light_theme_data.dart';

class ThemeController extends GetxController {
  ThemeData? theme ;
  AppServices appServices = Get.find();

  cahngeTheme(String themeCode) {
    theme = themeCode == "light" ? lightTheme() : darkTheme();
    appServices.sharedPreferences.setString("theme", themeCode);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    String? sharedPrefLang = appServices.sharedPreferences.getString("theme");
    if (sharedPrefLang == "light") {
      theme = lightTheme();
    } else if (sharedPrefLang == "dark") {
      theme = darkTheme();
    } else {
      
      theme =
          Get.theme.brightness == Brightness.light ? lightTheme() : darkTheme();
    }
  }
}
