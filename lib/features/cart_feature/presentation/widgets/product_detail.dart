import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nike Air Jordon",
          style: AppStyle.style18(context),
        ),
        const Gap(13),
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
            ),
            const Gap(8),
            Text(
              "Orange | Size: 40",
              style:
              AppStyle.style18(context).copyWith(color: const Color(0x9906004E)),
            ),
          ],
        ),
        const Gap(15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "EGP 3,500",
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(8)
      ],
    );
  }
}
