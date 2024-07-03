import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: isSelected ? 72 : 0,
            width: 7,
            color: isSelected ? AppColor.primaryColor : Colors.transparent,
          ),
          SizedBox(width: 5,),
          Text(
            "lbsss",
            style: AppStyle.style14(context)
                .copyWith(color: AppColor.primaryColor),
          )
        ],
      ),
    );
  }
}