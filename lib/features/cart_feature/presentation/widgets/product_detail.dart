import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nike Air Jordon",
          style: AppStyle.style18,
        ),
        Gap(13),
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
            ),
            Gap(8),
            Text(
              "Orange | Size: 40",
              style: AppStyle.style18
                  .copyWith(color: Colors.black.withOpacity(.3)),
            ),
          ],
        ),
        Gap(16),
        Text(
          "EGP 3,500",
          style: AppStyle.style18,
        ),
      ],
    );
  }
}
