import 'package:flutter/material.dart';
import 'package:flutter_app/core/global/theme/app_colors.dart';

ThemeData darkTheme() => ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
     // backgroundColor: ,
    )
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: AppColor.primaryColor,
    backgroundColor: Color.fromARGB(255, 51, 49, 49),
    elevation: 0,
    centerTitle: true
  ),
    //canvasColor: Colors.white,
    fontFamily: "Cairo",
    textTheme: ThemeData.dark().textTheme.copyWith(
      
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
              fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
          headlineLarge: const TextStyle(
              fontSize: 20, color: AppColor.white, fontWeight: FontWeight.w600),
          headlineMedium: const TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
          headlineSmall: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColor.grey,
          ),
        ),
    colorScheme: const ColorScheme.dark(primary: AppColor.primaryColor)
    );
