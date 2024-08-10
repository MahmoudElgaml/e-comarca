import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/core/services/snack_bar_services.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:e_comarce_clean/core/utils/helper_function.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/product_detail_image.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';
import '../../../../core/utils/cpmponents/offer_idndector.dart';
import '../../../products_feature/domain/entities/ProductEntity.dart';

class ProductInfoWidget extends StatelessWidget {
  ProductInfoWidget(
      {super.key, required this.product, required this.cartCubit});

  final Product product;
  int quantity = 1;
  final GetCartProductCubit cartCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView.builder(
          itemCount: product.images!.length,
          itemBuilder: (context, index) => ProductDetailImage(
            index: index,
            images: product.images ?? [],
          ),
        ),
        const Gap(24),
        Row(
          children: [
            SizedBox(
              width: 250,
              child: Text(
                product.title ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: AppStyle.style18(context),
              ),
            ),
            const Spacer(),
            Text(
              HelperFunction.checkOnDiscount(
                  product.price, product.priceAfterDiscount),
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(24),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0x4C004182),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "${product.sold} Sold",
                style: AppStyle.style14(context),
              ),
            ),
            const Gap(16),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              product.ratingsAverage.toString(),
              style: AppStyle.style14(context),
            ),
            const Spacer(),
            BlocListener<GetCartProductCubit, GetCartProductState>(
                bloc: cartCubit,
                listener: (context, state) {
                  if (state is GetCartProductLoadingState) {
                    EasyLoading.show();
                  } else if (state is GetCartProductSuccessState) {
                    print(quantity);
                    cartCubit.updateProductQuantityWithoutGetData(
                        product.id!, quantity);
                    EasyLoading.showSuccess("Done");
                  } else if (state is GetCartProductUnLoggedState) {
                    EasyLoading.dismiss();
                    SnackBarServices.showUnLoggedMessage(context);
                  }
                },
                child: IncreaseDecreaseOrderButton(
                  isCart: false,
                  productId: product.id,
                  quantity: quantity,
                ))
          ],
        ),
        const Gap(16),
        Text(
          "Description",
          style: AppStyle.style18(context),
        ),
        const Gap(8),
        Text(
          product.description ?? "",
          style: AppStyle.style14(context).copyWith(
            color: const Color(0x9906004E),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
