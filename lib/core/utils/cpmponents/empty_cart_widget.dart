import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(53.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(Assets.imagesEmptyCart),
          ),
          const Gap(24),
          Text(
            "Your Cart is Empty",
            style: AppStyle.styleBold28(context),
          ),
          const Gap(10),
          Text(
            textAlign: TextAlign.center,
            "Looks like you haven’t added anything to your cart yet",
            style: AppStyle.style18(context).copyWith(
              color: const Color(0xff9E9E9E),
            ),
          ),
          const Gap(26),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff307ef4),
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 48,
              ),
            ),
            onPressed: () {
              context.go(AppRoute.homeLayoutScreen);
            },
            child: Text(
              "Go Shop",
              style: AppStyle.styleWhite(context),
            ),
          )
        ],
      ),
    );
  }
}
