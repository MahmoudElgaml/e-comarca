import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/product_detail.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 389 / 113,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            // width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColor.primaryColor,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      Assets.imagesCategoryTest,
                      fit: BoxFit.fill,
                      height: double.infinity,
                    ),
                  ),
                ),
                const Gap(8),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ProductDetail(),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete_outline),
              color: AppColor.primaryColor,
               iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
