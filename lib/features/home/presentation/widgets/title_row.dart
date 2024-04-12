import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.category,
          style: AppStyle.style18,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "View all",
              style: AppStyle.style14.copyWith(color: AppColor.primaryColor),
            ))
      ],
    );
  }
}
