import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../domain/entities/ProductEntity.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key,required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title??"",
            style: AppStyle.style14(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            product.description??"",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.style14(context),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                product.price.toString()??"",
                style: AppStyle.style14(context),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                product.price.toString()??"",
                style: AppStyle.style11(context).copyWith(
                    decoration: TextDecoration.lineThrough
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Review",
                style: AppStyle.style14(context),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "(${product.ratingsAverage})",
                style: AppStyle.style12(context),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ],
          )
        ],
      ),
    );
  }
}
