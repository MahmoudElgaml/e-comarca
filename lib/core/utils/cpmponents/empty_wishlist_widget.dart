import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/routes.dart';
import '../../../generated/assets.dart';
import '../app_style.dart';

class EmptyWishlistWidget extends StatelessWidget {
  const EmptyWishlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(Assets.imagesEmptyWishList),
              ),
              const Gap(24),
              Text(
                "No Favourites",
                style: AppStyle.styleBold28(context),
              ),
              const Gap(10),
              Text(
                textAlign: TextAlign.center,
                "You can add an item to your wishList by clicking “Love Icon”",
                style: AppStyle.style18(context).copyWith(
                  color: const Color(0xff9E9E9E),
                ),
              ),
              const Gap(26),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 48,
                  ),
                ),
                onPressed: () {
                  context.go(AppRoute.homeLayoutScreen);
                },
                child: Text(
                  "Go Back",
                  style: AppStyle.styleWhite(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
