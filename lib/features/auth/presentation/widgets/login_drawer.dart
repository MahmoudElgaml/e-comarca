import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/features/auth/presentation/widgets/social_button.dart';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_style.dart';
import 'coatume_button.dart';
import 'costume_text_filed.dart';

class LogInDrawer extends StatelessWidget {
  const LogInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(top: 281),
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
                "Login",
                style: AppStyle.style34,
              ),
              Gap(32),
              const CostumeTextFiled(title: "Email"),
              Gap(32),
              const CostumeTextFiled(title: "password"),
              Gap(20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  style: AppStyle.styleRegularOpacity,
                  AppString.helpMessage,
                ),
              ),
              const Gap(20),
              CostumeButton(
                title: 'Login',
                onPressed: () => AuthCubit.get(context).logIn(
                  email: "mahmoudelgaml@gmail.com",
                  password: "123456789",
                ),
              ),
              const Gap(32),
              Text(
                style: AppStyle.styleRegularOpacity,
                "or Log in With",
              ),
              const Gap(28),
              const SocialButton(),
              const Gap(28),
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
