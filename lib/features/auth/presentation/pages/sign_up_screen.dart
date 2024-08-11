import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart';
import 'package:e_comarce_clean/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:e_comarce_clean/features/auth/domain/use_cases/log_in_usecase.dart';
import 'package:e_comarce_clean/features/auth/domain/use_cases/sign_up_usecase.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/signup_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
                  padding: EdgeInsets.only(top: 88, left: 36),
                  child: Column(
                    children: [
                      Image.asset(AppImages.bubbleTextSign),
                      const Gap(16),
                      DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 24.0,
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
                  padding: EdgeInsets.only(top: 40),
                  child: Image.asset(AppImages.login_logo),
                ),
              ],
            ),
          ),
          SignUpDrawer()
        ],
      ),
    );
  }
}
