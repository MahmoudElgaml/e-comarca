import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/addToCart_button.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/love_button.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/product_detail.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key,required this.isCart});
final bool isCart;
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
            padding: const EdgeInsets.all(3.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: isCart?  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline),
                    color: AppColor.primaryColor,
                    iconSize: 30,
                  ):const LoveButton()
                ),
                const Spacer(),
                 Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: isCart?const IncreaseDecreaseOrderButton():const AddToCartButton(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
