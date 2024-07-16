import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class NoLoggedWidget extends StatelessWidget {
  const NoLoggedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(Assets.imagesNoLogin),
          Text(
            "You Must Login First",
            style: AppStyle.style34(context).copyWith(color: AppColor.primaryColor),
          ),
          const Gap(18),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(left: 20,right: 20),
                backgroundColor: AppColor.primaryColor),
            onPressed: () {
              context.go(
                AppRoute.loginScreen
              );
            },
            child: Text(
              "Login",
              style: AppStyle.styleMedium20(context).copyWith(
                color: Colors.white,
                fontSize: 25
              ),
            ),
          )
        ],
      ),
    );
  }
}
