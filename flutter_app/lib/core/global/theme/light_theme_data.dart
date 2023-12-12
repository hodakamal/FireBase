import 'package:flutter/material.dart';
import 'package:flutter_app/core/global/theme/app_colors.dart';

ThemeData lightTheme() => ThemeData(
  appBarTheme: const AppBarTheme(
    foregroundColor: AppColor.primaryColor,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true
  ),
    //canvasColor: Colors.white,
    fontFamily: "Cairo",
    textTheme: ThemeData.light().textTheme.copyWith(
      
          displayLarge: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          displaySmall: const TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
          headlineLarge:const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600) ,
          headlineMedium: const TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
          headlineSmall:  const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
    colorScheme: const ColorScheme.light(primary: AppColor.primaryColor));
