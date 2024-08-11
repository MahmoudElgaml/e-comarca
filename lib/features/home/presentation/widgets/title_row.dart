import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_style.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.style18(context),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "View all",
              style: AppStyle.style14(context)
                  .copyWith(color: AppColor.primaryColor),
            ))
      ],
    );
  }
}
