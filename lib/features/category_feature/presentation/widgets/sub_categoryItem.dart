import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';

class SupCategoryItem extends StatelessWidget {
  const SupCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                Assets.imagesCategoryTest,
                fit: BoxFit.fill,
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "T-shirts",
          style: AppStyle.style12(context),
        )
      ],
    );
  }
}