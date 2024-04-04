import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/social_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_style.dart';
import '../pages/login_screen.dart';
import 'coatume_button.dart';
import 'costume_avatar.dart';
import 'costume_text_filed.dart';

class LogInDrawer extends StatelessWidget {
  const LogInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top: 281.h),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, left: 36.w, right: 36.w),
          child: Column(
            children: [
              Text(
                "Login",
                style: AppStyle.style34,
              ),
              Gap(32.h),
              const CostumeTextFiled(title: "Email"),
              Gap(32.h),
              const CostumeTextFiled(title: "password"),
              Gap(20.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  style: AppStyle.styleRegularOpacity,
                  AppString.helpMessage,
                ),
              ),
              Gap(20.h),
              const CostumeButton(
                title: 'Login',
              ),
              Gap(32.h),
              Text(
                style: AppStyle.styleRegularOpacity,
                "or Log in With",
              ),
              Gap(28.h),
              const SocialButton(),
              Gap(28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: AppStyle.styleRegularOpacity,
                    "NewUser? ",
                  ),
                  InkWell(
                    onTap: () => context.go(AppRoute.signUPScreen),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(color: AppColor.authColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
