

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/cpmponents/product_cart.dart';
import '../../domain/entities/WishProductEntity.dart';
import '../manager/wishlist_cubit.dart';

class WishlistGrid extends StatelessWidget {
  const WishlistGrid({super.key,required this.wishProducts});
  final List<WishProductDataEntity>?  wishProducts;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>  ProductCart(
          wishCubit: WishlistCubit.get(context),
          wishProduct: wishProducts?[index],
          isCart: false,
        ),
        separatorBuilder: (context, index) => const Gap(20),
        itemCount: wishProducts?.length ?? 0,
      ),
    );
  }
}
