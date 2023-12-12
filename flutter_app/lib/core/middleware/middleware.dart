import 'package:flutter/material.dart';
import 'package:flutter_app/core/constant/app_routes.dart';
import 'package:flutter_app/core/services/app_services.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Middleware extends GetMiddleware {
  @override
  int? get priority => 1;
  AppServices appServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (appServices.sharedPreferences.getBool("onBoarding") == true) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
