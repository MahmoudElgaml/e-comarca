import 'package:e_comarce_clean/features/auth/presentation/widgets/signup_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_images.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColor.authColor,
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 88.h, left: 36.w),
                  child: Image.asset(AppImages.bubbleTextSign),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Image.asset(AppImages.login_logo),
                ),
              ],
            ),
          ),
          const SignUpDrawer()
        ],
      ),
    );
  }
}
