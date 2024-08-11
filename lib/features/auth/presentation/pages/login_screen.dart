import 'dart:ffi';

import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
                  padding: const EdgeInsets.only(top: 88, left: 36),
                  child: Image.asset(AppImages.bubbleText),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(AppImages.login_logo),
                ),
              ],
            ),
          ),
           LogInDrawer(),
        ],
      ),
    );
  }
}
