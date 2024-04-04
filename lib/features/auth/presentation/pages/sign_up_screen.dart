import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/signup_drawer.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
                  child: Column(
                    children: [
                      Image.asset(AppImages.bubbleTextSign),
                      const Gap(16),
                      DefaultTextStyle(
                        style:  TextStyle(
                          fontSize: 24.0.sp,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText('Getting Start!'),
                          ],
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
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
