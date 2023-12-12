
import 'package:flutter_app/core/middleware/middleware.dart';
import 'package:flutter_app/main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => SplashScreen(), middlewares: [Middleware()]),
 /* GetPage(
    name: AppRoutes.login,
    page: () => const LoginScreen(),
  ),*/
  
];
