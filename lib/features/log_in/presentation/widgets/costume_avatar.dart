import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumeAvatar extends StatelessWidget {
  const CostumeAvatar(this.image, {super.key});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 23.h),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey.shade300
          ),
          shape: BoxShape.circle
      ),
      child: Image.asset(image),
    );
  }


}