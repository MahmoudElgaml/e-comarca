import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        Gap(18.h),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(

                  prefixIcon: const Icon(Icons.search,color: AppColor.primaryColor,size: 35,),
                  hintText:AppString.helperSearchText,
                  hintStyle: AppStyle.style14.copyWith(color: Colors.black.withOpacity(0.3),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: const BorderSide(color: AppColor.primaryColor),
                  ),
                ),
              ),
            ),
            Gap(24.w),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30.h,
                color: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
