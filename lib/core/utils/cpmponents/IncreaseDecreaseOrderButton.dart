import 'package:e_comarce_clean/core/utils/helper_function.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../app_style.dart';

class IncreaseDecreaseOrderButton extends StatelessWidget {
  const IncreaseDecreaseOrderButton({super.key, this.quantity, this.productId});

  final num? quantity;
  final String? productId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      decoration: ShapeDecoration(
        color: const Color(0xFF004182),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.center,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  HelperFunction.checkQuantity(quantity!)
                      ? GetCartProductCubit.get(context)
                          .updateProductQuantity(productId!, quantity! - 1)
                      : null;
                },
                child: Image.asset(Assets.imagesDecreaseIocn)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                quantity.toString(),
                style: AppStyle.style18(context).copyWith(color: Colors.white),
              ),
            ),
            InkWell(
                onTap: () {
                  GetCartProductCubit.get(context)
                      .updateProductQuantity(productId!, quantity! + 1);
                },
                child: SvgPicture.asset(Assets.imagesIncreaseIcon)),
          ],
        ),
      ),
    );
  }
}
