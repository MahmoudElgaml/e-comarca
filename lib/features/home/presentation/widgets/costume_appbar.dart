import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';

class CostumeAppBar extends StatelessWidget {
  const CostumeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.logo),
        const Gap(18),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColor.primaryColor,
                    size: 35,
                  ),
                  hintText: AppString.helperSearchText,
                  hintStyle: AppStyle.style14(context).copyWith(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: AppColor.primaryColor),
                  ),
                ),
              ),
            ),
            const Gap(24),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
