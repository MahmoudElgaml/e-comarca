import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';
import 'coatume_button.dart';
import 'costume_text_filed.dart';

class SignUpDrawer extends StatelessWidget {
  const SignUpDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          context.go(AppRoute.testScreen);
        }
      },
      builder: (context, state) {
        if (state is AuthLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AuthFailState) {
          return Container(
            color: Colors.white,
            height: 300,
            width: 200,
            child: Center(child: Text(state.errorMessage)),
          );
        }
        return Container(
          margin: EdgeInsets.only(top: 281.h),
          height: MediaQuery.of(context).size.height,
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
                    "Sign Up",
                    style: AppStyle.style34,
                  ),
                  Gap(32.h),
                  const CostumeTextFiled(title: "Full Name"),
                  Gap(32.h),
                  const CostumeTextFiled(title: "Mobile Number"),
                  Gap(20.h),
                  const CostumeTextFiled(title: "Email"),
                  Gap(20.h),
                  const CostumeTextFiled(title: "Password"),
                  Gap(20.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      style: AppStyle.styleRegularOpacity,
                      AppString.helpMessage,
                    ),
                  ),
                  Gap(20.h),
                  CostumeButton(
                    title: "SignUP",
                    onPressed: () => AuthCubit.get(context).signUp(
                        SignUserModel(
                            email: "mahmoudelgaml345@gmail.com",
                            name: "mahmoud12325",
                            password: "1234567895",
                            phone: "01061746848",
                            rePassword: "1234567895")),
                  ),
                  Gap(32.h),
                  Text(
                    style: AppStyle.styleRegularOpacity,
                    "or Sign Un With",
                  ),
                  Gap(28.h),
                  const SocialButton(),
                  Gap(28.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          style: AppStyle.styleRegularOpacity,
                          "Existing User? "),
                      InkWell(
                        onTap: () {
                          context.go(AppRoute.loginScreen);
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: AppColor.authColor),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
