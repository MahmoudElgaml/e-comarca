import 'package:e_comarce_clean/core/utils/cpmponents/IncreaseDecreaseOrderButton.dart';
import 'package:e_comarce_clean/core/utils/helper_function.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/product_detail_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';
import '../../../../core/utils/cpmponents/offer_idndector.dart';
import '../../../products_feature/domain/entities/ProductEntity.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({super.key, required this.product});

  final Product product;

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
                )),
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
             HelperFunction.checkOnDiscount(product.price, product.priceAfterDiscount),
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
            const IncreaseDecreaseOrderButton()
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
