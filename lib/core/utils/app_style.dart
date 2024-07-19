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

  static TextStyle easySuccess =
      const TextStyle(color: Colors.green, fontWeight: FontWeight.bold);

  static TextStyle styleRegularOpacity(BuildContext context) {
    return TextStyle(
      color: Colors.black.withOpacity(.3),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle style18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF06004E),
      fontSize: responsiveFont(context: context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsiveFont(context: context, fontSize: 18),
      fontWeight: FontWeight.w400,
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
        fontFamily: 'Poppins');
  }

  static TextStyle style11(BuildContext context) {
    return const TextStyle(
      color: Color(0x99004182),
      fontSize: 11,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleWhite(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: responsiveFont(context: context, fontSize: 17),
    );
  }

  static TextStyle styleLight20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: responsiveFont(context: context, fontSize: 20),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: responsiveFont(context: context, fontSize: 20),
    );
  }

  static double scaleFactor(double width) {
    if (width < 500) {
      return width / 400;
    } else if (width > 1200) {
      return width / 1000;
    } else {
      return width / 300;
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
