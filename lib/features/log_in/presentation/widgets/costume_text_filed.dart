import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumeTextFiled extends StatelessWidget {
  const CostumeTextFiled({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontSize: 13.sp),),
        const TextField(
          decoration: InputDecoration(),
        )
      ],
    );
  }
}
