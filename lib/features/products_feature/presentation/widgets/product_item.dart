import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/products_feature/domain/entities/ProductEntity.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_details.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/cpmponents/love_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

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
                  aspectRatio:  191 / 128,
                  child: CachedNetworkImage(
                    imageUrl: product.images![0],
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) => Text(error.toString()),
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
                const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: LoveButton(),
                    )),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SvgPicture.asset(Assets.imagesIconPlus),
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
