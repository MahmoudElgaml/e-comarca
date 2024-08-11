import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_style.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton(
      {required this.title, this.onPressed, super.key, required this.isSign});

  final void Function()? onPressed;
  final String title;
  final bool isSign;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          gradient: LinearGradient(
            colors: [Color(0xff8658E8), Color(0xff4718AD)],
          )),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccessState) {
              isSign
                  ? context.go(AppRoute.loginScreen)
                  : context.go(AppRoute.homeLayoutScreen);
            }
          },
          builder: (context, state) {
            if (state is AuthLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is AuthFailState) {
              return  Text(state.errorMessage);
            }
            return Text(
              title,
              style: AppStyle.styleWhite(context),
            );
          },
        ),
      ),
    );
  }
}
