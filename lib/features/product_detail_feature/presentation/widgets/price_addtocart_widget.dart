import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';

class PriceAddToCartWidget extends StatelessWidget {
  const PriceAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Total Price",
              style: AppStyle.style18(context).copyWith(
                color: const Color(0x9906004E),
              ),
            ),
            const Gap(12),
            Text(
              "EGP 3,500",
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(33),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              context.push(AppRoute.cartScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: FittedBox(
                child: Row(
                  children: [
                    const Gap(25),
                    const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    const Gap(24),
                    Text(
                      "Add To Cart",
                      style: AppStyle.styleMedium20(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
