import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle style34 = TextStyle(
    color: AppColor.authColor,
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleRegularOpacity = TextStyle(
    color: Colors.black.withOpacity(.3),
    fontWeight: FontWeight.bold,
  );

  static TextStyle style18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle style14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle style12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleWhite = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17.sp,
  );
}
