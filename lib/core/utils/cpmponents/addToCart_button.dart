import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:flutter/material.dart';

import '../../../features/cart_feature/presentation/manager/get_cart_product_cubit.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key,required this.cartCubit,required this.productId});
  final String productId;
  final GetCartProductCubit cartCubit;
  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap:  () => cartCubit.addToCart(productId),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        width: 100,
        height: 36,
        decoration: ShapeDecoration(
          color: const Color(0xFF004182),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              'Add to Cart',
              style: AppStyle.style14(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
