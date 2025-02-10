import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_settings_plus/core/open_settings_plus.dart';

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

  static void showErrorMessage(BuildContext context, String error) {
    
    var snackBar = SnackBar(
      content: Text(
        error,
        style: AppStyle.styleMedium20(context).copyWith(color: Colors.red),
      ),
      padding: const EdgeInsets.all(15),
      duration: const Duration(seconds: 4),
      backgroundColor: AppColor.authColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  static void showNoInternetMessage(BuildContext context, String error) {
    
    var snackBar = SnackBar(
      content: Text(
        error,
        style: AppStyle.styleMedium20(context).copyWith(color: Colors.white),
      ),
      padding: const EdgeInsets.all(15),
      duration: const Duration(seconds: 10),
      action: SnackBarAction(
        textColor: Colors.black,
        label: "Retry",
        onPressed: () {
          switch (OpenSettingsPlus.shared) {
               case OpenSettingsPlusAndroid settings: 
                settings.wifi();
                break;
                case OpenSettingsPlusIOS settings:
                settings.wifi();
                break;
                default:
                throw Exception('Platform not supported');
              }
        },
      ),
      backgroundColor: AppColor.authColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
