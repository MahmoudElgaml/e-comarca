import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/totalprice_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/cpmponents/product_cart.dart';
import '../../domain/entities/CartProduct.dart';
import '../manager/get_cart_product_cubit.dart';

class CartGrid extends StatelessWidget {
  const CartGrid({super.key, required this.cartProducts});

  final List<CartProducts>? cartProducts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 32),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ProductCart(
                cartproduct: cartProducts![index],
                isCart: true,
              ),
              separatorBuilder: (context, index) => const Gap(20),
              itemCount: cartProducts?.length ?? 0,
            ),
          ),
          TotalPriceWidget(
              totalPrice: GetCartProductCubit.get(context)
                      .cartData
                      ?.data
                      ?.totalCartPrice
                      .toString() ??
                  "")
        ],
      ),
    );
  }
}
