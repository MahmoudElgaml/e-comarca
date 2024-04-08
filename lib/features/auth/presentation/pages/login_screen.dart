import 'dart:ffi';

import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/login_drawer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  child: Image.asset(AppImages.bubbleText),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Image.asset(AppImages.login_logo),
                ),
              ],
            ),
          ),
          const LogInDrawer(),
        ],
      ),
    );
  }
}
