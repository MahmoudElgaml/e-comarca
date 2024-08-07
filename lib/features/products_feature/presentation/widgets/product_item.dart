import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/domain/entities/ProductEntity.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_details.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/cpmponents/love_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.product,
      required this.cartCubit,
      this.wishlistCubit});

  final GetCartProductCubit cartCubit;
  final Product product;
  final WishlistCubit? wishlistCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0x4C004182)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        //fit: StackFit.expand,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: AspectRatio(
                  aspectRatio: 191 / 128,
                  child: CachedNetworkImage(
                    imageUrl: product.images![0],
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        Text(error.toString()),
                  ),
                ),
              ),
              ProductDetails(
                product: product,
              )
            ],
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: LoveButton(
                        productId: product.id,
                        wishlistCubit: wishlistCubit,
                        isSelected: false,
                      ),
                    )),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: IconButton(
                      icon: SvgPicture.asset(Assets.imagesIconPlus),
                      onPressed: () {
                        cartCubit.addToCart(product.id!);
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
