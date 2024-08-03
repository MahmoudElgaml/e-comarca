import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void configureEasyLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..indicatorSize = 50.0
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = const Color(0xffffffff)
    ..indicatorColor = const Color(0xff004182)
    ..textColor = Colors.white
    ..maskType = EasyLoadingMaskType.custom
    ..maskColor = const Color(0x54ffffff)
    ..userInteractions = false
    ..dismissOnTap = false
    ..successWidget= Center(child: Text("add Successfully",style: AppStyle.easySuccess));
}
