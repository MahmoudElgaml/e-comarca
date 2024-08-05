import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/addToCart_button.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/love_button.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/product_detail.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:gap/gap.dart';

import '../../service_locator/config.dart';

class ProductCart extends StatelessWidget {
  const ProductCart(
      {super.key,
      required this.isCart,
      this.cartproduct,
      this.wishProduct,
      this.wishCubit});

  final bool isCart;
  final CartProducts? cartproduct;
  final WishProductDataEntity? wishProduct;
  final WishlistCubit? wishCubit;

  @override
  Widget build(BuildContext context) {
    GetCartProductCubit cartCubit = getIt<GetCartProductCubit>();
    return AspectRatio(
      aspectRatio: 389 / 113,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
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
                    child: CachedNetworkImage(
                      imageUrl: isCart
                          ? cartproduct?.product?.imageCover ?? ""
                          : wishProduct?.imageCover ?? "",
                      errorWidget: (context, url, error) =>
                          const Text("some thing wrong"),
                      fit: BoxFit.fill,
                      height: double.infinity,
                    ),
                  ),
                ),
                const Gap(8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ProductDetail(
                    isCart: isCart,
                    product: cartproduct,
                    wishProduct: wishProduct,
                  ),
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
                    child: isCart
                        ? IconButton(
                            onPressed: () {
                              GetCartProductCubit.get(context)
                                  .deleteFromCart(cartproduct!.product!.id!);
                            },
                            icon: const Icon(Icons.delete_outline),
                            color: AppColor.primaryColor,
                            iconSize: 30,
                          )
                        : LoveButton(
                            isSelected: true,
                            productId: wishProduct!.id,
                            wishlistCubit: wishCubit,
                          )),
                const Spacer(),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: isCart
                      ? IncreaseDecreaseOrderButton(
                          quantity: cartproduct?.count,
                          productId: cartproduct!.product!.id,
                        )
                      : BlocListener<GetCartProductCubit, GetCartProductState>(
                          bloc: cartCubit,
                          listener: (context, state) {
                            if (state is GetCartProductLoadingState) {
                              EasyLoading.show();
                            } else if (state is GetCartProductSuccessState) {
                              EasyLoading.showSuccess("Added to Cart",
                                  duration: const Duration(milliseconds: 500));
                            }
                          },
                          child: AddToCartButton(
                            cartCubit: cartCubit,
                            productId: wishProduct!.id!,
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
