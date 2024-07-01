import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/product_detail.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColor.primaryColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColor.primaryColor,
              ),
            ),
            child: Image.asset(
              AppImages.cartTest,
              fit: BoxFit.fill,
            ),
          ),
          const Gap(8),
          const ProductDetail()
        ],
      ),
    );
  }
}
