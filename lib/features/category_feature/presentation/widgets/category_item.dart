import 'package:e_comarce_clean/features/category_feature/domain/entities/category2_entiny.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.isSelected,required this.category});

  final bool isSelected;
  final CategoryData2 ?category;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: isSelected ? 72 : 0,
            width: 7,
            color: isSelected ? AppColor.primaryColor : Colors.transparent,
          ),

          const SizedBox(width: 5,),
          Text(
            category!.name??"",
            style: AppStyle.style14(context)
                .copyWith(color: AppColor.primaryColor),

          )
        ],
      ),
    );
  }
}