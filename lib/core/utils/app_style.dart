import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle style34(context) {
    return TextStyle(
      color: AppColor.authColor,
      fontSize: responsiveFont(context: context, fontSize: 34),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleRegularOpacity(BuildContext context) {
    return TextStyle(
      color: Colors.black.withOpacity(.3),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle style18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsiveFont(context: context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style14(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsiveFont(context: context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style12(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context: context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins'
    );
  }

  static TextStyle styleWhite(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: responsiveFont(context: context, fontSize: 17),
    );
  }

  static TextStyle style20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: responsiveFont(context: context, fontSize: 20),
    );
  }

  static double scaleFactor(double width) {
    if (width < 600) {
      return width / 400;
    } else if (width > 900) {
      return width / 1000;
    } else {
      return width / 400;
    }
  }

  static double responsiveFont(
      {required double fontSize, required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    double scalefactor = scaleFactor(width);
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.3;

    double responsiveFont = fontSize * scalefactor;
    return responsiveFont.clamp(lowerLimit, upperLimit);
  }
}
