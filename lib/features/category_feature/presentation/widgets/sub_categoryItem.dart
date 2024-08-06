import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/SubCategoryEntity.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';

class SupCategoryItem extends StatelessWidget {
  const SupCategoryItem({super.key,required this.subCategoryData});
 final  SubCategoryData? subCategoryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: subCategoryData!.imageCover??"",
                fit: BoxFit.fill,
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subCategoryData?.title??"",
          style: AppStyle.style12(context).copyWith(
            color: const Color(0xFF06004E),
          ),
        overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
