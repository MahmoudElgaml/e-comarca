import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 398 / 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              Assets.imagesProductDetailTest,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Gap(24),
        Row(
          children: [
            Text(
              "Nike Air Jordan",
              style: AppStyle.style18(context),
            ),
            const Spacer(),
            Text(
              "EGP 3,500",
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(24),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0x4C004182),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "3,230 Sold",
                style: AppStyle.style14(context),
              ),
            ),
            const Gap(16),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              "4.8",
              style: AppStyle.style14(context),
            ),
            const Spacer(),
            const IncreaseDecreaseOrderButton()

          ],
        ),
        const Gap(16),
        Text(
          "Description",
          style: AppStyle.style18(context),
        ),
        const Gap(8),
        Text(
          "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories",
          style: AppStyle.style14(context).copyWith(
            color: const Color(0x9906004E),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
