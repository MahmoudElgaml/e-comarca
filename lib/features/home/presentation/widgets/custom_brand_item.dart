import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../domain/entities/BrandEntity.dart';

class CustomBrandItem extends StatelessWidget {
  const CustomBrandItem({super.key,required this.brand});
  final BrandDataEntity? brand ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          width: 100,
          height: 100,
          imageUrl:brand?.image?? "",
          errorWidget: (context, url, error) => const Text("somthing error"),
        ),
        const SizedBox(height: 9),
        FittedBox(
          child: Text(
            brand?.name ?? "",
            style:
            AppStyle.style14(context).copyWith(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
