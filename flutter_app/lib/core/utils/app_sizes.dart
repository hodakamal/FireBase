import 'package:flutter/material.dart';

class AppSizes {
  static double height(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = AppBar().preferredSize.height;
    double h = MediaQuery.of(context).size.height -
        statusBarHeight -
        appBarHeight ;
    return h;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double spaceBetweenFields(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.02;
  }
}
