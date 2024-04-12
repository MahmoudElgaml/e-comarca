import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumeCategory extends StatelessWidget {
  const CostumeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            AppImages.categoryTest,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 65.w,
          child: Text(
            "women fashion ",
            style: AppStyle.style14
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
