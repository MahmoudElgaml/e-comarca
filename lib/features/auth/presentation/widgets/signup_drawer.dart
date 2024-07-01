import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          context.go(AppRoute.homeScreen);
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
          margin: const EdgeInsets.only(top: 281),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 36, right: 36),
              child: Column(
                children: [
                  Text(
                    "Sign Up",
                    style: AppStyle.style34(context),
                  ),
                  const Gap(32),
                  const CostumeTextFiled(title: "Full Name"),
                  const Gap(32),
                  const CostumeTextFiled(title: "Mobile Number"),
                  const Gap(20),
                  const CostumeTextFiled(title: "Email"),
                  const Gap(20),
                  const CostumeTextFiled(title: "Password"),
                  const Gap(20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      style: AppStyle.styleRegularOpacity(context),
                      AppString.helpMessage,
                    ),
                  ),
                  const Gap(20),
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
                  const Gap(32),
                  Text(
                    style: AppStyle.styleRegularOpacity(context),
                    "or Sign Un With",
                  ),
                  const Gap(28),
                  const SocialButton(),
                  const Gap(28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          style: AppStyle.styleRegularOpacity(context),
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
