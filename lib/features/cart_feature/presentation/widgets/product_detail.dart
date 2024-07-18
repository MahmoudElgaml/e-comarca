import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key,this.product});
final  CartProducts? product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product?.product?.title??" ",
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
              "EGP ${product?.price} ",
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(8)
      ],
    );
  }
}
