import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarServices {
  static void showUnLoggedMessage(BuildContext context) {
    var snackBar = SnackBar(
      content: Text(
        "you Must Login First",
        style: AppStyle.styleMedium20(context).copyWith(color: Colors.white),
      ),
      padding: const EdgeInsets.all(15),
      duration: const Duration(seconds: 4),

      backgroundColor: AppColor.primaryColor,
      action: SnackBarAction(
        textColor: Colors.black,
        label: "Login",
        onPressed: () {
          context.go(AppRoute.loginScreen);
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
