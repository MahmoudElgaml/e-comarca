import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0x4C004182)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(Assets.imagesProductTest),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "productName",
                  style: AppStyle.style14(context),
                ),
                Text(
                  "productdescription",
                  style: AppStyle.style14(context),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      "price",
                      style: AppStyle.style14(context),
                    ),
                    SizedBox(width: 16,),
                    Text(
                      "dissacount",
                      style: AppStyle.style11(context),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
