import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/services/validation_service.dart';
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
  LogInDrawer({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  static var validateKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: validateKey,
      child: Container(
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
                  style: AppStyle.style34(context),
                ),
                const Gap(32),
                CostumeTextFiled(
                  validate: (value) => ValidationService.validateEmail(value),
                  title: "Email",
                  textEditingController: email,
                ),
                const Gap(32),
                CostumeTextFiled(
                  validate: (value) =>
                      ValidationService.validateEmpty(value, "password"),
                  isPassword: true,
                  title: "password",
                  textEditingController: password,
                ),
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
                  isSign: false,
                  title: 'Login',
                  onPressed: () {
                    if (validateKey.currentState!.validate()) {
                      AuthCubit.get(context).logIn(
                        email: email.text,
                        password: password.text,
                      );
                    }
                  },
                ),
                const Gap(32),
                Text(
                  style: AppStyle.styleRegularOpacity(context),
                  "or Log in With",
                ),
                const Gap(28),
                const SocialButton(),
                const Gap(28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style: AppStyle.styleRegularOpacity(context),
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
      ),
    );
  }
}
