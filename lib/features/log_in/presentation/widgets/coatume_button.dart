import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_style.dart';

class CostumeButton extends StatelessWidget {
  const CostumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 68.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.r),
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r)),
          gradient: const LinearGradient(
            colors: [Color(0xff8658E8), Color(0xff4718AD)],
          )),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(
          "Login",
          style: AppStyle.styleWhite,
        ),
      ),
    );
  }
}
