import 'package:e_comarce_clean/core/utils/helper_function.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../app_style.dart';

class IncreaseDecreaseOrderButton extends StatefulWidget {
  IncreaseDecreaseOrderButton(
      {super.key,
      required this.quantity,
      this.productId,
      required this.isCart,
      this.update});

  num quantity;
  final String? productId;
  final bool isCart;
  void Function(int quantity1)? update;

  @override
  State<IncreaseDecreaseOrderButton> createState() =>
      _IncreaseDecreaseOrderButtonState();
}

class _IncreaseDecreaseOrderButtonState
    extends State<IncreaseDecreaseOrderButton> {
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
                if (widget.isCart) {
                  HelperFunction.checkQuantity(widget.quantity)
                      ? GetCartProductCubit.get(context).updateProductQuantity(
                          widget.productId!, widget.quantity - 1)
                      : null;
                } else {
                  HelperFunction.checkQuantity(widget.quantity)
                      ? widget.quantity--
                      : null;

                  setState(() {});
                }
              },
              child: Image.asset(Assets.imagesDecreaseIocn),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                widget.quantity.toString(),
                style: AppStyle.style18(context).copyWith(color: Colors.white),
              ),
            ),
            InkWell(
              onTap: () {
                if (widget.isCart) {
                  GetCartProductCubit.get(context).updateProductQuantity(
                      widget.productId!, widget.quantity + 1);
                } else {
                  setState(() {
                    widget.quantity++;
                  });
                }
              },
              child: SvgPicture.asset(Assets.imagesIncreaseIcon),
            ),
          ],
        ),
      ),
    );
  }
}
