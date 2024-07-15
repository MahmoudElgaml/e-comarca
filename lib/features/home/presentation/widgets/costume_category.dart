import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostumeCategory extends StatelessWidget {
  const CostumeCategory(
      {super.key, required this.category, required this.index});

  final List<CategoryData>? category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
            fadeInDuration: const Duration( milliseconds:2),

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
          imageUrl: category![index].image ?? "",
          errorWidget: (context, url, error) => const Text("somthing error"),
        ),
        const SizedBox(height: 9),
        FittedBox(
          child: Text(
            category![index].name ?? "",
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
