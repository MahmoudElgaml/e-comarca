import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../../config/routes/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Lottie.asset(Assets.imagesSplash)),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () async {
      context.go(AppRoute.homeLayoutScreen);
    });
  }
}
